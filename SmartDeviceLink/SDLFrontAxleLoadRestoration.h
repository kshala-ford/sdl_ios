//
//  SDLFrontAxleLoadRestoration.h
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 6/9/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLEnum.h"

/**
 * The Front Axle Load Restoration
 */
typedef SDLEnum SDLFrontAxleLoadRestoration SDL_SWIFT_ENUM;

/**
 * Exit
 */
extern SDLFrontAxleLoadRestoration const SDLFrontAxleLoadRestorationExit;

/**
 * First Measurement
 */
extern SDLFrontAxleLoadRestoration const SDLFrontAxleLoadRestorationRequestFirstMeasurement;

/**
 * Second Measurement
 */
extern SDLFrontAxleLoadRestoration const SDLFrontAxleLoadRestorationRequestSecondMeasurement;

/**
 * Complete
 */
extern SDLFrontAxleLoadRestoration const SDLFrontAxleLoadRestorationComplete;
