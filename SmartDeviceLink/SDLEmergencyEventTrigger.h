//
//  SDLEmergencyEventTrigger.h
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 5/6/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLRPCMessage.h"

#import "SDLEmergencyEventTriggerType.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLEmergencyEventTrigger : SDLRPCStruct

/**
 References signal "EDRTriggerEvntSync". See EmergencyEventTriggerType.

 Required
 */
@property (strong, nonatomic) SDLEmergencyEventTriggerType edrEventTriggerStatus;

/**
 References signal "RstrnImpactEvntStatus". See EmergencyEventTriggerType.

 Required
 */
@property (strong, nonatomic) SDLEmergencyEventTriggerType restrainImpactStatus;

@end

NS_ASSUME_NONNULL_END
