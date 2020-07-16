//
//  SDLPttbPowerStatus.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLEnum.h"

/**
 * Identifies the status of the box.
 *
 */
typedef SDLEnum SDLPttbPowerStatus SDL_SWIFT_ENUM;

/**
 * @abstract Power Status : NOT_USED
 */
extern SDLPttbPowerStatus const SDLPttbPowerStatusNotUsed;

/**
 * @abstract Power Status : OFF.
 */
extern SDLPttbPowerStatus const SDLPttbPowerStatusOff;

/**
 * @abstract Power Status : LOW.
 */
extern SDLPttbPowerStatus const SDLPttbPowerStatusLow;

/**
 * @abstract Power Status : HIGH.
 */
extern SDLPttbPowerStatus const SDLPttbPowerStatusHigh;
