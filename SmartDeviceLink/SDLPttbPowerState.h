//
//  SDLPttbPowerState.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 * Identifies the various states of the box.
 *
 */
typedef SDLEnum SDLPttbPowerState SDL_SWIFT_ENUM;

/**
 * @abstract Power State : NOT_USED
 */
extern SDLPttbPowerState const SDLPttbPowerStateNotUsed;

/**
 * @abstract Power State : OFF.
 */
extern SDLPttbPowerState const SDLPttbPowerStateOff;

/**
 * @abstract Power State : LOW.
 */
extern SDLPttbPowerState const SDLPttbPowerStateLow;

/**
 * @abstract Power State : HIGH.
 */
extern SDLPttbPowerState const SDLPttbPowerStateHigh;
