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
