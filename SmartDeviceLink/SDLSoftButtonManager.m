//
//  SDLSoftButtonManager.m
//  SmartDeviceLink
//
//  Created by Joel Fischer on 2/22/18.
//  Copyright © 2018 smartdevicelink. All rights reserved.
//

#import "SDLSoftButtonManager.h"

#import "SDLConnectionManagerType.h"
#import "SDLDisplayCapabilities.h"
#import "SDLError.h"
#import "SDLFileManager.h"
#import "SDLRegisterAppInterfaceResponse.h"
#import "SDLRPCResponseNotification.h"
#import "SDLSetDisplayLayoutResponse.h"
#import "SDLShow.h"
#import "SDLSoftButton.h"
#import "SDLSoftButtonObject.h"
#import "SDLSoftButtonState.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLSoftButtonObject()

@property (assign, nonatomic) NSUInteger buttonId;
@property (weak, nonatomic) SDLSoftButtonManager *manager;

@end

@interface SDLSoftButtonManager()

@property (strong, nonatomic) NSArray<SDLSoftButton *> *currentSoftButtons;

@property (weak, nonatomic) id<SDLConnectionManagerType> connectionManager;
@property (weak, nonatomic) SDLFileManager *fileManager;

@property (strong, nonatomic, nullable) SDLShow *inProgressUpdate;
@property (copy, nonatomic, nullable) SDLSoftButtonUpdateCompletionHandler inProgressHandler;

@property (strong, nonatomic, nullable) SDLShow *queuedImageUpdate;
@property (assign, nonatomic) BOOL hasQueuedUpdate;
@property (copy, nonatomic, nullable) SDLSoftButtonUpdateCompletionHandler queuedUpdateHandler;

@property (strong, nonatomic, nullable) SDLDisplayCapabilities *displayCapabilities;

@end

@implementation SDLSoftButtonManager

- (instancetype)initWithConnectionManager:(id<SDLConnectionManagerType>)connectionManager fileManager:(SDLFileManager *)fileManager {
    self = [super init];
    if (!self) { return nil; }

    _connectionManager = connectionManager;
    _fileManager = fileManager;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sdl_registerResponse:) name:SDLDidReceiveRegisterAppInterfaceResponse object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sdl_displayLayoutResponse:) name:SDLDidReceiveSetDisplayLayoutResponse object:nil];

    return self;
}

- (void)setSoftButtonObjects:(NSArray<SDLSoftButtonObject *> *)softButtonObjects {
    // TODO: Cancel if set w/ in progress update / queued update
    // TODO: Check number of soft buttons vs. allowed number of buttons

    if (softButtonObjects == nil) {
        _softButtonObjects = nil;

        return;
    }

    // Set the soft button ids. Check to make sure no two soft buttons have the same name, there aren't many soft buttons, so n^2 isn't going to be bad
    for (NSUInteger i = 0; i < softButtonObjects.count; i++) {
        NSString *buttonName = softButtonObjects[i].name;
        softButtonObjects[i].buttonId = i * 100;
        for (NSUInteger j = (i + 1); j < softButtonObjects.count; j++) {
            if ([softButtonObjects[j].name isEqualToString:buttonName]) {
                return;
            }
        }
    }

    _softButtonObjects = softButtonObjects;

    for (SDLSoftButtonObject *button in _softButtonObjects) {
        button.manager = self;
    }

    // Upload all soft button images, the initial state images first, then the other states. We need to send updates when the initial state is ready.
    NSMutableArray<SDLArtwork *> *initialStatesToBeUploaded = [NSMutableArray array];
    for (SDLSoftButtonObject *object in self.softButtonObjects) {
        if (object.currentState.artwork != nil && ![self.fileManager hasUploadedFile:object.currentState.artwork]) {
            [initialStatesToBeUploaded addObject:object.currentState.artwork];
        }
    }
    NSMutableArray<SDLArtwork *> *otherStatesToBeUploaded = [NSMutableArray array];
    for (SDLSoftButtonObject *object in self.softButtonObjects) {
        for (SDLSoftButtonState *state in object.states) {
            if ([state.name isEqualToString:object.currentState.name]) { continue; }
            if (state.artwork != nil && ![self.fileManager hasUploadedFile:state.artwork]) {
                [otherStatesToBeUploaded addObject:state.artwork];
            }
        }
    }

    // Upload initial images, then other state images
    if (initialStatesToBeUploaded.count > 0) {
        [self.fileManager uploadArtworks:[initialStatesToBeUploaded copy] completionHandler:^(NSArray<NSString *> * _Nonnull artworkNames, NSError * _Nullable error) {
            [self updateWithCompletionHandler:nil];
        }];
    }
    if (otherStatesToBeUploaded.count > 0) {
        [self.fileManager uploadArtworks:[otherStatesToBeUploaded copy] completionHandler:^(NSArray<NSString *> * _Nonnull artworkNames, NSError * _Nullable error) {
            // In case our soft button states have changed in the meantime
            [self updateWithCompletionHandler:nil];
        }];
    }

    [self updateWithCompletionHandler:nil];
}

- (nullable SDLSoftButtonObject *)softButtonObjectNamed:(NSString *)name {
    for (SDLSoftButtonObject *object in self.softButtonObjects) {
        if ([object.name isEqualToString:name]) {
            return object;
        }
    }

    return nil;
}

- (void)updateWithCompletionHandler:(nullable SDLSoftButtonUpdateCompletionHandler)handler {
    if (self.isBatchingUpdates) {
        return;
    }

    if (self.inProgressUpdate != nil) {
        // If we already have a pending update, we're going to tell the old handler that it was superseded by a new update and then return
        if (self.queuedUpdateHandler != nil) {
            self.queuedUpdateHandler([NSError sdl_softButtonManager_pendingUpdateSuperseded]);
            self.queuedUpdateHandler = nil;
        }

        if (handler != nil) {
            self.queuedUpdateHandler = handler;
        } else {
            self.hasQueuedUpdate = YES;
        }

        return;
    }

    self.inProgressHandler = [handler copy];
    self.inProgressUpdate = [[SDLShow alloc] init];
    self.inProgressUpdate.mainField1 = self.currentMainField1;
    if (self.softButtonObjects == nil) {
        self.inProgressUpdate.softButtons = @[];
    } else if ([self sdl_currentStateHasImages] && ![self sdl_allCurrentStateImagesAreUploaded]) {
        // The images don't yet exist on the head unit, send a text update if possible, otherwise, don't send anything yet
        NSArray<SDLSoftButton *> *textOnlyButtons = [self sdl_textButtonsForCurrentState];
        if (textOnlyButtons != nil) {
            self.inProgressUpdate.softButtons = textOnlyButtons;
        } else {
            return; // TODO: I think this will mess things up?
        }
    } else {
        self.inProgressUpdate.softButtons = [self sdl_softButtonsForCurrentState];
    }

    __weak typeof(self) weakSelf = self;
    [self.connectionManager sendConnectionRequest:self.inProgressUpdate withResponseHandler:^(__kindof SDLRPCRequest * _Nullable request, __kindof SDLRPCResponse * _Nullable response, NSError * _Nullable error) {
        __strong typeof(weakSelf) strongSelf = weakSelf;

        NSLog(@"SoftButton update request: %@, response: %@, error: %@", request, response, error);
        strongSelf.inProgressUpdate = nil;
        if (strongSelf.inProgressHandler != nil) {
            strongSelf.inProgressHandler(error);
            strongSelf.inProgressHandler = nil;
        }

        if (strongSelf.hasQueuedUpdate) {
            [strongSelf updateWithCompletionHandler:[strongSelf.queuedUpdateHandler copy]];
            strongSelf.queuedUpdateHandler = nil;
            strongSelf.hasQueuedUpdate = NO;
        }
    }];
}

#pragma mark - Images

- (void)sdl_uploadArtworks:(NSArray<SDLArtwork *> *)artworks withCompletionHandler:(void (^)(NSError *error))handler {
    [self.fileManager uploadArtworks:artworks completionHandler:^(NSArray<NSString *> * _Nonnull artworkNames, NSError * _Nullable error) {
        handler(error);
    }];
}

- (BOOL)sdl_currentStateHasImages {
    for (SDLSoftButtonObject *object in self.softButtonObjects) {
        if (object.currentState.artwork != nil) {
            return YES;
        }
    }

    return NO;
}

- (BOOL)sdl_allCurrentStateImagesAreUploaded {
    for (SDLSoftButtonObject *button in self.softButtonObjects) {
        SDLArtwork *artwork = button.currentState.artwork;
        if (artwork != nil && ![self.fileManager hasUploadedFile:artwork]) {
            return NO;
        }
    }

    return YES;
}

#pragma mark - Creating Soft Buttons

/**
 Returns text soft buttons representing the initial states of the button objects, or nil if _any_ of the buttons' current states are image only buttons.

 @return The text soft buttons
 */
- (nullable NSArray<SDLSoftButton *> *)sdl_textButtonsForCurrentState {
    NSMutableArray<SDLSoftButton *> *textButtons = [NSMutableArray arrayWithCapacity:self.softButtonObjects.count];
    for (SDLSoftButtonObject *buttonObject in self.softButtonObjects) {
        SDLSoftButton *button = buttonObject.currentStateSoftButton;
        if (button.text == nil) {
            return nil;
        }

        button.image = nil;
        button.type = SDLSoftButtonTypeText;
        [textButtons addObject:button];
    }

    return [textButtons copy];
}

- (NSArray<SDLSoftButton *> *)sdl_softButtonsForCurrentState {
    NSMutableArray<SDLSoftButton *> *softButtons = [NSMutableArray arrayWithCapacity:self.softButtonObjects.count];
    for (SDLSoftButtonObject *button in self.softButtonObjects) {
        [softButtons addObject:button.currentStateSoftButton];
    }

    return [softButtons copy];
}

#pragma mark - RPC Responses

- (void)sdl_registerResponse:(SDLRPCResponseNotification *)notification {
    SDLRegisterAppInterfaceResponse *response = (SDLRegisterAppInterfaceResponse *)notification.response;
    self.displayCapabilities = response.displayCapabilities;
}

- (void)sdl_displayLayoutResponse:(SDLRPCResponseNotification *)notification {
    SDLSetDisplayLayoutResponse *response = (SDLSetDisplayLayoutResponse *)notification.response;

    if (response.displayCapabilities != nil) {
        self.displayCapabilities = response.displayCapabilities;

        // Auto-send an updated Show
        [self updateWithCompletionHandler:nil];
    }
}

@end

NS_ASSUME_NONNULL_END
