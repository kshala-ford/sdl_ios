//
//  SDLPttbFaltMsg.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 * Identifies the possible faults of the box.
 *
 */
typedef SDLEnum SDLPttbFaltMsg SDL_SWIFT_ENUM;

/**
 * @abstract Fault Msg : OK
 */
extern SDLPttbFaltMsg const OK;

/**
 * @abstract Fault Msg : OVER_CURRENT
 */
extern SDLPttbFaltMsg const OVER_CURRENT;

/**
 * @abstract Fault Msg : GFCI
 */
extern SDLPttbFaltMsg const GFCI;

/**
 * @abstract Fault Msg : TEMPERATURE
 */
extern SDLPttbFaltMsg const TEMPERATURE;

/**
 * @abstract Fault Msg : AC_ON_OUTPUT
 */
extern SDLPttbFaltMsg const AC_ON_OUTPUT;

/**
 * @abstract Fault Msg : FUEL_LOW
 */
extern SDLPttbFaltMsg const FUEL_LOW;

/**
 * @abstract Fault Msg : BREAKER_A
 */
extern SDLPttbFaltMsg const BREAKER_A;

/**
 * @abstract Fault Msg : BREAKER_B
 */
extern SDLPttbFaltMsg const BREAKER_B;

/**
 * @abstract Fault Msg : BREAKER_C
 */
extern SDLPttbFaltMsg const BREAKER_C;

/**
 * @abstract Fault Msg : PLUG_WARN_DRIVE
 */
extern SDLPttbFaltMsg const PLUG_WARN_DRIVE;

/**
 * @abstract Fault Msg : PLUG_WARN
 */
extern SDLPttbFaltMsg const PLUG_WARN;

/**
 * @abstract Fault Msg : NOT_AVAILABLE
 */
extern SDLPttbFaltMsg const NOT_AVAILABLE;

/**
 * @abstract Fault Msg : SERVICE
 */
extern SDLPttbFaltMsg const SERVICE;

/**
 * @abstract Fault Msg : ENGINE_RUN
 */
extern SDLPttbFaltMsg const ENGINE_RUN;

/**
 * @abstract Fault Msg : OVER_CURRENT_LP
 */
extern SDLPttbFaltMsg const OVER_CURRENT_LP;

/**
 * @abstract Fault Msg : HVAC_ON
 */
extern SDLPttbFaltMsg const HVAC_ON;

/**
 * @abstract Fault Msg : HEV_DERATE
 */
extern SDLPttbFaltMsg const HEV_DERATE;
