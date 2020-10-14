//
//  SDLTrailerCheckPreconditionStatus.h
//  SmartDeviceLink
//
//  Created by Brahmbhatt, Parth (P.) on 9/10/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLEnum.h"

typedef SDLEnum SDLTrailerCheckPreconditionStatus SDL_SWIFT_ENUM;

/**
 None.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusNone;

/**
 Iginition is not On.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusIgnitionNotOn;

/**
 Tail Lights are On.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusTailLightsOn;

/**
 Battery is Low.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusBatterySocLow;

/**
 Preconditions have been passed.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusPreconditionsPassed;

/**
 Interaction Present.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusInteractionPresent;

/**
 Not Stationary.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusNotStationary;

/**
 Error.
 */
extern SDLTrailerCheckPreconditionStatus const SDLTrailerCheckPreconditionStatusError;


