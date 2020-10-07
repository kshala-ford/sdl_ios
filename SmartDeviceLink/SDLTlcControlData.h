//
//  SDLTlcControlData.h
//  SmartDeviceLink
//
//  Created by Brahmbhatt, Parth (P.) on 9/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLTrailerCheckUserInput.h"
#import "SDLTrailerCheckPreconditionStatus.h"
#import "SDLTrailerCheckTestStatus.h"
#import "SDLRPCMessage.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLTlcControlData : SDLRPCStruct

/**
Constructs a newly allocated SDLTlcControlData object with given parameters

@return An instance of the SDLTlcControlData class.
*/
- (instancetype)initWithUserInput:(nullable SDLTrailerCheckUserInput)userInput preconditionStatus:(nullable SDLTrailerCheckPreconditionStatus)preconditionStatus testStatus:(nullable SDLTrailerCheckTestStatus)testStatus;

/**
 * read-only
 *
 * Optional, SDLTrailerCheckUserInput
 */
@property (nullable, strong, nonatomic, readwrite) SDLTrailerCheckUserInput userInput;

/**
 * read-only
 *
 * Optional, SDLTrailerCheckPreconditionStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLTrailerCheckPreconditionStatus preconditionStatus;

/**
 * read-only
 *
 * Optional, SDLTrailerCheckTestStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLTrailerCheckTestStatus testStatus;

@end

NS_ASSUME_NONNULL_END
