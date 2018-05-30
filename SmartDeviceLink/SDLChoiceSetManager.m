//
//  SDLChoiceSetManager.m
//  SmartDeviceLink
//
//  Created by Joel Fischer on 5/21/18.
//  Copyright © 2018 smartdevicelink. All rights reserved.
//

#import "SDLChoiceSetManager.h"

#import "SDLCheckChoiceVROptionalOperation.h"
#import "SDLChoice.h"
#import "SDLChoiceCell.h"
#import "SDLChoiceSet.h"
#import "SDLChoiceSetDelegate.h"
#import "SDLConnectionManagerType.h"
#import "SDLCreateInteractionChoiceSet.h"
#import "SDLCreateInteractionChoiceSetResponse.h"
#import "SDLDeleteChoicesOperation.h"
#import "SDLDisplayCapabilities.h"
#import "SDLDisplayCapabilities+ShowManagerExtensions.h"
#import "SDLError.h"
#import "SDLFileManager.h"
#import "SDLHMILevel.h"
#import "SDLImage.h"
#import "SDLLogMacros.h"
#import "SDLOnHMIStatus.h"
#import "SDLPerformInteraction.h"
#import "SDLPerformInteractionResponse.h"
#import "SDLPreloadChoicesOperation.h"
#import "SDLPresentChoiceSetOperation.h"
#import "SDLPresentKeyboardOperation.h"
#import "SDLRegisterAppInterfaceResponse.h"
#import "SDLRPCNotificationNotification.h"
#import "SDLRPCResponseNotification.h"
#import "SDLSetDisplayLayoutResponse.h"
#import "SDLStateMachine.h"
#import "SDLSystemContext.h"

NS_ASSUME_NONNULL_BEGIN

typedef NSString SDLChoiceManagerState;
SDLChoiceManagerState *const SDLChoiceManagerStateShutdown = @"Shutdown";
SDLChoiceManagerState *const SDLChoiceManagerStateCheckingVoiceOptional = @"CheckingVoiceOptional";
SDLChoiceManagerState *const SDLChoiceManagerStateReady = @"Ready";
SDLChoiceManagerState *const SDLChoiceManagerStateStartupError = @"StartupError";

typedef NSNumber * SDLChoiceId;

@interface SDLChoiceCell()

@property (assign, nonatomic) UInt16 choiceId;

@end

@interface SDLChoiceSetManager()

@property (weak, nonatomic) id<SDLConnectionManagerType> connectionManager;
@property (weak, nonatomic) SDLFileManager *fileManager;

@property (strong, nonatomic, readonly) SDLStateMachine *stateMachine;
@property (strong, nonatomic) NSOperationQueue *transactionQueue;

@property (copy, nonatomic, nullable) SDLHMILevel currentHMILevel;
@property (copy, nonatomic, nullable) SDLSystemContext currentSystemContext;
@property (strong, nonatomic, nullable) SDLDisplayCapabilities *displayCapabilities;

@property (strong, nonatomic) NSMutableSet<SDLChoiceCell *> *preloadedMutableChoices;
@property (strong, nonatomic, readonly) NSSet<SDLChoiceCell *> *pendingPreloadChoices;
@property (strong, nonatomic) NSMutableSet<SDLChoiceCell *> *pendingMutablePreloadChoices;
@property (strong, nonatomic, nullable) SDLChoiceSet *pendingPresentationSet;
@property (strong, nonatomic, nullable) SDLAsynchronousOperation *pendingPresentOperation;

@property (assign, nonatomic, readonly) NSUInteger nextChoiceId;
@property (assign, nonatomic, getter=isVROptional) BOOL vrOptional;

@end

UInt16 const ChoiceCellIdMin = 1;

@implementation SDLChoiceSetManager

#pragma mark - Lifecycle

- (instancetype)initWithConnectionManager:(id<SDLConnectionManagerType>)connectionManager fileManager:(SDLFileManager *)fileManager {
    self = [super init];
    if (!self) { return nil; }

    _connectionManager = connectionManager;
    _fileManager = fileManager;
    _stateMachine = [[SDLStateMachine alloc] initWithTarget:self initialState:SDLChoiceManagerStateShutdown states:[self.class sdl_stateTransitionDictionary]];
    _transactionQueue = [[NSOperationQueue alloc] init];
    _transactionQueue.name = @"SDLFileManager Transaction Queue";
    _transactionQueue.maxConcurrentOperationCount = 1;
    _transactionQueue.qualityOfService = NSQualityOfServiceUserInitiated;

    _preloadedMutableChoices = [NSMutableSet set];
    _pendingMutablePreloadChoices = [NSMutableSet set];

    _nextChoiceId = ChoiceCellIdMin;
    _vrOptional = YES;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sdl_registerResponse:) name:SDLDidReceiveRegisterAppInterfaceResponse object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sdl_displayLayoutResponse:) name:SDLDidReceiveSetDisplayLayoutResponse object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sdl_hmiStatusNotification:) name:SDLDidChangeHMIStatusNotification object:nil];

    return self;
}

- (void)start {
    if ([self.currentState isEqualToString:SDLChoiceManagerStateShutdown]) {
        [self.stateMachine transitionToState:SDLChoiceManagerStateCheckingVoiceOptional];
    }

    // Else, we're already started
}

- (void)stop {
    [self.stateMachine transitionToState:SDLChoiceManagerStateShutdown];
}

+ (NSDictionary<SDLState *, SDLAllowableStateTransitions *> *)sdl_stateTransitionDictionary {
    return @{
             SDLChoiceManagerStateShutdown: @[SDLChoiceManagerStateCheckingVoiceOptional],
             SDLChoiceManagerStateCheckingVoiceOptional: @[SDLChoiceManagerStateShutdown, SDLChoiceManagerStateReady, SDLChoiceManagerStateStartupError],
             SDLChoiceManagerStateReady: @[SDLChoiceManagerStateShutdown],
             SDLChoiceManagerStateStartupError: @[SDLChoiceManagerStateShutdown]
             };
}

#pragma mark - State Management

- (void)didEnterStateShutdown {
    _currentHMILevel = nil;
    _currentSystemContext = nil;
    _displayCapabilities = nil;

    [self.transactionQueue cancelAllOperations];
    _preloadedMutableChoices = [NSMutableSet set];
    _pendingMutablePreloadChoices = [NSMutableSet set];
    _pendingPresentationSet = nil;

    _vrOptional = YES;
    _nextChoiceId = ChoiceCellIdMin;
}

- (void)didEnterStateCheckingVoiceOptional {
    [self sdl_sendTestChoice];
}

- (void)didEnterStateStartupError {
    // TODO
}

#pragma mark - Choice Management

#pragma mark Upload / Delete

- (void)preloadChoices:(NSArray<SDLChoiceCell *> *)choices withCompletionHandler:(nullable SDLPreloadChoiceCompletionHandler)handler {
    if (![self.currentState isEqualToString:SDLChoiceManagerStateReady]) { return; }
    NSSet<SDLChoiceCell *> *choicesToUpload = [self sdl_choicesToBeUploadedWithArray:choices];

    // Add the preload cells to the pending preloads
    [self.pendingMutablePreloadChoices unionSet:choicesToUpload];

    // Upload pending preloads
    SDLPreloadChoicesOperation *preloadOp = [[SDLPreloadChoicesOperation alloc] initWithConnectionManager:self.connectionManager fileManager:self.fileManager displayCapabilities:self.displayCapabilities isVROptional:self.isVROptional cellsToPreload:self.pendingPreloadChoices];

    __weak typeof(preloadOp) weakPreloadOp = preloadOp;
    preloadOp.completionBlock = ^{
        if (handler != nil) {
            handler(weakPreloadOp.error);
        }
    };
    [self.transactionQueue addOperation:preloadOp];
}

- (void)deleteChoices:(NSArray<SDLChoiceCell *> *)choices {
    if (![self.currentState isEqualToString:SDLChoiceManagerStateReady]) { return; }

    // Find cells to be deleted that are already uploaded or are pending upload
    NSSet<SDLChoiceCell *> *cellsToBeDeleted = [self sdl_choicesToBeDeletedWithArray:choices];
    NSSet<SDLChoiceCell *> *cellsToBeRemovedFromPending = [self sdl_choicesToBeRemovedFromPendingWithArray:choices];

    // If choices are deleted that are already uploaded or pending and are used by a pending presentation, cancel it and send an error
    NSSet<SDLChoiceCell *> *pendingPresentationSet = [NSSet setWithArray:self.pendingPresentationSet.choices];
    if ([cellsToBeDeleted intersectsSet:pendingPresentationSet] || [cellsToBeRemovedFromPending intersectsSet:pendingPresentationSet]) {
        if (self.pendingPresentationSet.delegate != nil) {
            [self.pendingPresentationSet.delegate choiceSet:self.pendingPresentationSet didReceiveError:[NSError sdl_choiceSetManager_choicesDeletedBeforePresentation:@{@"deletedChoices": choices}]];
        }

        self.pendingPresentationSet = nil;
    }

    // Remove the cells from pending and delete choices
    [self.pendingMutablePreloadChoices minusSet:cellsToBeRemovedFromPending];
    SDLDeleteChoicesOperation *deleteOp = [[SDLDeleteChoicesOperation alloc] initWithConnectionManager:self.connectionManager cellsToDelete:cellsToBeDeleted];

    __weak typeof(self) weakself = self;
    __weak typeof(deleteOp) weakOp = deleteOp;
    deleteOp.completionBlock = ^{
        if (weakOp.error != nil) {
            SDLLogE(@"Failed to delete choices: %@", weakOp.error);
            return;
        }

        [weakself.preloadedMutableChoices minusSet:cellsToBeDeleted];
    };
    [self.transactionQueue addOperation:deleteOp];
}

- (void)sdl_sendTestChoice {
    // Setup by sending a Choice Set without VR, seeing if there's an error. If there is, send one with VR. This choice set will be used for `presentKeyboard` interactions.
    SDLCheckChoiceVROptionalOperation *checkOp = [[SDLCheckChoiceVROptionalOperation alloc] initWithConnectionManager:self.connectionManager];

    __weak typeof(self) weakSelf = self;
    __weak typeof(checkOp) weakOp = checkOp;
    checkOp.completionBlock = ^{
        weakSelf.vrOptional = weakOp.isVROptional;

        if (weakOp.error != nil) {
            [weakSelf.stateMachine transitionToState:SDLChoiceManagerStateReady];
        } else {
            [weakSelf.stateMachine transitionToState:SDLChoiceManagerStateStartupError];
        }
    };

    [self.transactionQueue addOperation:checkOp];
}

#pragma mark Present

- (void)presentChoiceSet:(SDLChoiceSet *)choiceSet mode:(SDLInteractionMode)mode {
    if (![self.currentState isEqualToString:SDLChoiceManagerStateReady]) { return; }

    if (self.pendingPresentationSet != nil) {
        [self.pendingPresentOperation cancel];
    }

    self.pendingPresentationSet = choiceSet;
    [self preloadChoices:self.pendingPresentationSet.choices withCompletionHandler:nil];

    self.pendingPresentOperation = [[SDLPresentChoiceSetOperation alloc] initWithConnectionManager:self.connectionManager choiceSet:self.pendingPresentationSet mode:mode keyboardProperties:nil keyboardDelegate:nil];
    [self.transactionQueue addOperation:self.pendingPresentOperation];
}

- (void)presentSearchableChoiceSet:(SDLChoiceSet *)choiceSet mode:(SDLInteractionMode)mode withKeyboardDelegate:(id<SDLKeyboardDelegate>)delegate {
    if (![self.currentState isEqualToString:SDLChoiceManagerStateReady]) { return; }

    if (self.pendingPresentationSet != nil) {
        [self.pendingPresentOperation cancel];
    }

    self.pendingPresentationSet = choiceSet;
    [self preloadChoices:self.pendingPresentationSet.choices withCompletionHandler:nil];

    self.pendingPresentOperation = [[SDLPresentChoiceSetOperation alloc] initWithConnectionManager:self.connectionManager choiceSet:self.pendingPresentationSet mode:mode keyboardProperties:self.keyboardConfiguration keyboardDelegate:delegate];
    [self.transactionQueue addOperation:self.pendingPresentOperation];
}

- (void)presentKeyboardWithInitialText:(NSString *)initialText delegate:(id<SDLKeyboardDelegate>)delegate {
    if (![self.currentState isEqualToString:SDLChoiceManagerStateReady]) { return; }

    if (self.pendingPresentationSet != nil) {
        [self.pendingPresentOperation cancel];
    }

    // Present a keyboard with the choice set that we used to test VR's optional state
    self.pendingPresentOperation = [[SDLPresentKeyboardOperation alloc] initWithConnectionManager:self.connectionManager keyboardProperties:self.keyboardConfiguration initialText:initialText keyboardDelegate:delegate];
    [self.transactionQueue addOperation:self.pendingPresentOperation];
}

#pragma mark - Choice Management Helpers

- (NSSet<SDLChoiceCell *> *)sdl_choicesToBeUploadedWithArray:(NSArray<SDLChoiceCell *> *)choices {
    // Check if any of the choices already exist on the head unit and remove them from being preloaded
    NSMutableSet<SDLChoiceCell *> *choicesSet = [NSMutableSet setWithArray:choices];
    [choicesSet minusSet:self.preloadedChoices];

    return [choicesSet copy];
}

- (NSSet<SDLChoiceCell *> *)sdl_choicesToBeDeletedWithArray:(NSArray<SDLChoiceCell *> *)choices {
    NSMutableSet<SDLChoiceCell *> *choicesSet = [NSMutableSet setWithArray:choices];
    [choicesSet intersectSet:self.preloadedChoices];

    return [choicesSet copy];
}

- (NSSet<SDLChoiceCell *> *)sdl_choicesToBeRemovedFromPendingWithArray:(NSArray<SDLChoiceCell *> *)choices {
    NSMutableSet<SDLChoiceCell *> *choicesSet = [NSMutableSet setWithArray:choices];
    [choicesSet intersectSet:self.pendingPreloadChoices];

    return [choicesSet copy];
}

#pragma mark - Getters

- (NSSet<SDLChoiceCell *> *)preloadedChoices {
    return [_preloadedMutableChoices copy];
}

- (NSSet<SDLChoiceCell *> *)pendingPreloadChoices {
    return [_pendingMutablePreloadChoices copy];
}

- (NSString *)currentState {
    return self.stateMachine.currentState;
}

#pragma mark - RPC Responses / Notifications

- (void)sdl_registerResponse:(SDLRPCResponseNotification *)notification {
    SDLRegisterAppInterfaceResponse *response = (SDLRegisterAppInterfaceResponse *)notification.response;
    self.displayCapabilities = response.displayCapabilities;
}

- (void)sdl_displayLayoutResponse:(SDLRPCResponseNotification *)notification {
    SDLSetDisplayLayoutResponse *response = (SDLSetDisplayLayoutResponse *)notification.response;
    self.displayCapabilities = response.displayCapabilities;
}

- (void)sdl_hmiStatusNotification:(SDLRPCNotificationNotification *)notification {
    // We can only present a choice set if we're in FULL
    SDLOnHMIStatus *hmiStatus = (SDLOnHMIStatus *)notification.notification;
    SDLHMILevel oldHMILevel = self.currentHMILevel;
    self.currentHMILevel = hmiStatus.hmiLevel;

    if ([self.currentHMILevel isEqualToEnum:SDLHMILevelNone]) {
        self.transactionQueue.suspended = YES;
    }

    if ([oldHMILevel isEqualToEnum:SDLHMILevelNone] && ![self.currentHMILevel isEqualToEnum:SDLHMILevelNone]) {
        self.transactionQueue.suspended = NO;
    }

    // We need to check for this to make sure we can currently present the dialog. If the current context is HMI_OBSCURED or ALERT, we have to wait for MAIN to present
    SDLSystemContext oldSystemContext = self.currentSystemContext;
    self.currentSystemContext = hmiStatus.systemContext;

    if ([self.currentSystemContext isEqualToEnum:SDLSystemContextHMIObscured] || [self.currentSystemContext isEqualToEnum:SDLSystemContextAlert]) {
        self.transactionQueue.suspended = YES;
    }

    if (([oldSystemContext isEqualToEnum:SDLSystemContextHMIObscured] || [oldSystemContext isEqualToEnum:SDLSystemContextAlert])
        && [self.currentSystemContext isEqualToEnum:SDLSystemContextMain]
        && ![self.currentHMILevel isEqualToEnum:SDLHMILevelNone]) {
        self.transactionQueue.suspended = NO;
    }
}

@end

NS_ASSUME_NONNULL_END
