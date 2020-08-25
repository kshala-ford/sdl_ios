//
//  SDLEmergencyEventTrigger.m
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 5/6/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLEmergencyEventTrigger.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

@implementation SDLEmergencyEventTrigger

- (void)setEdrEventTriggerStatus:(SDLEmergencyEventTriggerType)edrEventTriggerStatus {
    [self.store sdl_setObject:edrEventTriggerStatus forName:SDLRPCParameterNameEdrEventTriggerStatus];
}

- (SDLEmergencyEventTriggerType)edrEventTriggerStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameEdrEventTriggerStatus error:&error];
}

- (void)setRestrainImpactStatus:(SDLEmergencyEventTriggerType)restrainImpactStatus {
    [self.store sdl_setObject:restrainImpactStatus forName:SDLRPCParameterNameRestrainImpactStatus];
}

- (SDLEmergencyEventTriggerType)restrainImpactStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameRestrainImpactStatus error:&error];
}

@end
