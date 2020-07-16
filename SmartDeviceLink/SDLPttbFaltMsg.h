//
//  SDLPttbFaltMsg.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLEnum.h"

/**
 * Identifies the possible faults of the box.
 *
 */
typedef SDLEnum SDLPttbFaltMsg SDL_SWIFT_ENUM;

/**
 * @abstract Fault Msg : OK
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgOk;

/**
 * @abstract Fault Msg : OVER_CURRENT
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgOverCurrent;

/**
 * @abstract Fault Msg : GFCI
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgGFCI;

/**
 * @abstract Fault Msg : TEMPERATURE
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgTemperature;

/**
 * @abstract Fault Msg : AC_ON_OUTPUT
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgACOnOutput;

/**
 * @abstract Fault Msg : FUEL_LOW
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgFuelLow;

/**
 * @abstract Fault Msg : BREAKER_A
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgBreakerA;

/**
 * @abstract Fault Msg : BREAKER_B
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgBreakerB;

/**
 * @abstract Fault Msg : BREAKER_C
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgBreakerC;

/**
 * @abstract Fault Msg : PLUG_WARN_DRIVE
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgPlugWarnDrive;

/**
 * @abstract Fault Msg : PLUG_WARN
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgPlugWarn;

/**
 * @abstract Fault Msg : NOT_AVAILABLE
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgNotAvailable;

/**
 * @abstract Fault Msg : SERVICE
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgService;

/**
 * @abstract Fault Msg : ENGINE_RUN
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgEngineRun;

/**
 * @abstract Fault Msg : OVER_CURRENT_LP
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgOverCurrentLP;

/**
 * @abstract Fault Msg : HVAC_ON
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgHVACOn;

/**
 * @abstract Fault Msg : HEV_DERATE
 */
extern SDLPttbFaltMsg const SDLPttbFaltMsgHEVDerate;
