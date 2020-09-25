//
//  SDLTlcControlData.m
//  SmartDeviceLink
//
//  Created by Brahmbhatt, Parth (P.) on 9/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File


#import "SDLTlcControlData.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

@interface SDLTlcControlData()
@property (nullable, strong, nonatomic, readwrite) SDLTrailerCheckPreconditionStatus preconditionStatus;
@property (nullable, strong, nonatomic, readwrite) SDLTrailerCheckTestStatus testStatus;
@end

@implementation SDLTlcControlData

- (instancetype)initWithUserInput:(nullable SDLTrailerCheckUserInput)userInput preconditionStatus:(nullable SDLTrailerCheckPreconditionStatus)preconditionStatus testStatus:(nullable SDLTrailerCheckTestStatus)testStatus {
    self = [self init];
    if(!self) {
        return nil;
    }

    self.userInput = userInput;
    self.preconditionStatus = preconditionStatus;
    self.testStatus = testStatus;

    return self;
}

- (void)setUserInputStatus:(SDLTrailerCheckUserInput)userInput {
    [self.store sdl_setObject:userInput forName:SDLRPCParameterNameUserInput];
}

- (SDLTrailerCheckUserInput)userInput {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameUserInput error:&error];
}

- (void)setPreconditionStatus:(SDLTrailerCheckPreconditionStatus)preconditionStatus {
    [self.store sdl_setObject:preconditionStatus forName:SDLRPCParameterNamePreconditionStatus];
}

- (SDLTrailerCheckPreconditionStatus)preconditionStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNamePreconditionStatus error:&error];
}

- (void)setTestStatus:(SDLTrailerCheckTestStatus)testStatus {
    [self.store sdl_setObject:testStatus forName:SDLRPCParameterNameTestStatus];
}

- (SDLTrailerCheckTestStatus)testStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameTestStatus error:&error];
}

@end

