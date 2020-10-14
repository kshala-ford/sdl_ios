//
//  SDLTlcControlCapabilities.h
//  SmartDeviceLink
//
//  Created by Brahmbhatt, Parth (P.) on 9/11/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLRPCMessage.h"

@class SDLTlcControlCapabilities;

NS_ASSUME_NONNULL_BEGIN

/**
* Contains information about a trailer check control module's capabilities.
*/
@interface SDLTlcControlCapabilities : SDLRPCStruct

/**
 Constructs a newly allocated SDLTlcControlCapabilities object with given parameters


 @param moduleName friendly name of the trailer check control module
 @param userInputAvailable Availability of the user input
 @param preconditionStatusAvailable Availability of the precondition status
 @param testStatusAvailable Availability of the test status
 @return An instance of the SDLTlcControlCapabilities class
 */
- (instancetype)initWithModuleName:(NSString *)moduleName userInputAvailable:(BOOL)userInputAvailable preconditionStatusAvailable:(BOOL)preconditionStatusAvailable testStatusAvailable:(BOOL)testStatusAvailable;

/**
 *
 * Max string length 100 chars
 *
 * Required
 */
@property (strong, nonatomic) NSString *moduleName;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *userInputAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *preconditionStatusAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *testStatusAvailable;

@end

NS_ASSUME_NONNULL_END

