//
//  SDLPttbControlCapabilities.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLRPCMessage.h"
#import "SDLModuleInfo.h"

@class SDLPttbControlCapabilities;

NS_ASSUME_NONNULL_BEGIN

/**
* Contains information about a pttb control module's capabilities.
*/
@interface SDLPttbControlCapabilities : SDLRPCStruct

/**
 Constructs a newly allocated SDLPttbControlCapabilities object with given parameters


 @param moduleName friendly name of the light control module
 @param stateAvailable Availability of the state of the box
 @param resetAvailable Availability of the reset of the box
 @param faltMsgAvailable Availability of the falt message to the box
 @param engOnMsgAvailable Availability of the engine on message to the box
 @param loFuelMsgAvailable Availability of the low fuel on message to the box
 @param powerStatusAvailable Availability of the power status of the box
 @param outletAAvailable Availability of outlet A of the box
 @param outletBAvailable Availability of outlet B of the box
 @param pwMaxAvailable Availability of the max power the box
 @param hwConfigAvailable Availability of the hw configuration the box
 @param pwConsumptionAvailable Availability of the power consumption of the box
 @return An instance of the SDLPttbControlCapabilities class
 */
- (instancetype)initWithModuleName:(NSString *)moduleName stateAvailable:(BOOL)stateAvailable resetAvailable:(BOOL)resetAvailable faltMsgAvailable:(BOOL)faltMsgAvailable engOnMsgAvailable:(BOOL)engOnMsgAvailable loFuelMsgAvailable:(BOOL)loFuelMsgAvailable powerStatusAvailable:(BOOL)powerStatusAvailable outletAAvailable:(BOOL)outletAAvailable outletBAvailable:(BOOL)outletBAvailable pwMaxAvailable:(BOOL)pwMaxAvailable hwConfigAvailable:(BOOL)hwConfigAvailable pwConsumptionAvailable:(BOOL)pwConsumptionAvailable;

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
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *stateAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *resetAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *faltMsgAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *engOnMsgAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *loFuelMsgAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *powerStatusAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *outletAAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *outletBAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *pwMaxAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *hwConfigAvailable;

/**
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *pwConsumptionAvailable;


@end

NS_ASSUME_NONNULL_END
