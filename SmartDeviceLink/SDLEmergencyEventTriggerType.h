//
//  SDLEmergencyEventTriggerType.h
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 5/6/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 Reflects the emergency event triggers details of the vehicle.

 */
typedef SDLEnum SDLEmergencyEventTriggerType SDL_SWIFT_ENUM;

/**
 Normal Trigger.
 */
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeNormal;

/**
 Threshold Exceeded Trigger.
 */
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeThresholdExceeded;

/**
 Threshold One Exceeded Trigger.
 */
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeThresholdOneExceeded;

/**
 Threshold Two Exceeded Trigger.
 */
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeThresholdTwoExceeded;

/**
 Not used Trigger
 */
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeNotUsed;

/**
Invalid Trigger
*/
extern SDLEmergencyEventTriggerType const SDLEmergencyEventTriggerTypeInvalid;

