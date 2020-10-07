//
//  SDLTlcControlCapabilities.m
//  SmartDeviceLink
//
//  Created by Brahmbhatt, Parth (P.) on 9/11/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLTlcControlCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

@implementation SDLTlcControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName userInputAvailable:(BOOL)userInputAvailable preconditionStatusAvailable:(BOOL)preconditionStatusAvailable testStatusAvailable:(BOOL)testStatusAvailable {
    self = [self init];
    if (!self) {
        return nil;
    }
    
    self.moduleName = moduleName;
    self.userInputAvailable = @(userInputAvailable);
    self.preconditionStatusAvailable = @(preconditionStatusAvailable);
    self.testStatusAvailable = @(testStatusAvailable);
    
    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [self.store sdl_setObject:moduleName forName:SDLRPCParameterNameModuleName];
}

- (NSString *)moduleName {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameModuleName ofClass:NSString.class error:&error];
}

- (void)setUserInputAvailable:(nullable NSNumber<SDLBool> *)userInputAvailable {
    [self.store sdl_setObject:userInputAvailable forName:SDLRPCParameterNameStateAvailable];
}

- (nullable NSNumber<SDLBool> *)userInputAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameStateAvailable ofClass:NSNumber.class error:nil];
}

- (void)setPreconditionStatusAvailable:(nullable NSNumber<SDLBool> *)preconditionStatusAvailable {
    [self.store sdl_setObject:preconditionStatusAvailable forName:SDLRPCParameterNameResetAvailable];
}

- (nullable NSNumber<SDLBool> *)preconditionStatusAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameResetAvailable ofClass:NSNumber.class error:nil];
}

- (void)setTestStatusAvailable:(nullable NSNumber<SDLBool> *)testStatusAvailable {
    [self.store sdl_setObject:testStatusAvailable forName:SDLRPCParameterNameFaltMsgAvailable];
}

- (nullable NSNumber<SDLBool> *)testStatusAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameFaltMsgAvailable ofClass:NSNumber.class error:nil];
}

@end
