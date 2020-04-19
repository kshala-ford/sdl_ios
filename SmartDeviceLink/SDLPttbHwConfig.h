//
//  SDLPttbHwConfig.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 * Identifies the configuration of the box.
 *
 */
typedef SDLEnum SDLPttbHwConfig SDL_SWIFT_ENUM;

/**
 * @abstract HW Config : NO_PTTB_HARDWARE
 */
extern SDLPttbHwConfig const SDLPttbHwConfigNone;

/**
 * @abstract HW Config : PTTB_2_0KW.
 */
extern SDLPttbHwConfig const SDLPttbHwConfig20;

/**
 * @abstract HW Config : PTTB_2_4KW.
 */
extern SDLPttbHwConfig const SDLPttbHwConfig24;

/**
 * @abstract HW Config : PTTB_7_2KW.
 */
extern SDLPttbHwConfig const SDLPttbHwConfig72;

/**
 * @abstract HW Config : PTTB_2_3KW.
 */
extern SDLPttbHwConfig const SDLPttbHwConfig23;
