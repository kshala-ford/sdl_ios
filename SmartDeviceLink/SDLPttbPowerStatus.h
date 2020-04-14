//
//  SDLPttbPowerStatus.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 * Identifies the status of the box.
 *
 */
typedef SDLEnum SDLPttbPowerStatus SDL_SWIFT_ENUM;

/**
 * @abstract Power Status : NOT_USED
 */
extern SDLPttbPowerStatus const NOT_USED;

/**
 * @abstract Power Status : OFF.
 */
extern SDLPttbPowerStatus const OFF;

/**
 * @abstract Power Status : LOW.
 */
extern SDLPttbPowerStatus const LOW;

/**
 * @abstract Power Status : HIGH.
 */
extern SDLPttbPowerStatus const HIGH;
