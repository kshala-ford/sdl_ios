//
//  SDLPTTBControlData.h
//  SmartDeviceLink
//
//  Created by Arnold Goetzke on 4/3/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <SmartDeviceLink/SmartDeviceLink.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDLPTTBControlData : SDLRPCStruct

/**
 * @abstract control command, maps to DcacPw_D_Rq
 *
 * Optional, PttbPowerState
 */
@property (nullable, strong, nonatomic) SDLPttbPowerState state;

/**
 * @abstract control command, maps to DcacPwReset_B_Rq
 *
 * Optional
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *reset;

/**
 * @abstract read-only, maps to DcacFaltMsgTxt_D2_Rq, if *D2_Rq not available default to DcacFaltMsgTxt_D_Rq
 *
 * Optional, PttbFaltMsg
 */
@property (nullable, strong, nonatomic) SDLPttbFaltMsg faltMsg;

/**
 * @abstract read-only, maps to DcacLoFuelMsgTxt_D_Rq
 *
 * Optional, MinValue = 0 MaxValue = 30
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *loFuelMsg;

/**
 * @abstract read-only, maps to DcacElPw_D_Stat
 *
 * Optional, PttbPowerStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLPttbPowerStatus status;

/**
 * @abstract read-only, maps to DcacOut1_Pw2_Dsply
 *
 * Optional, MinValue = 0 MaxValue = 8191
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *outletA;

/**
 * @abstract read-only, maps to DcacOut2_Pw2_Dsply
 *
 * Optional, MinValue = 0 MaxValue = 8191
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *outletB;

/**
 * @abstract read-only, maps to DcacOut_Pw_DsplyMx
 *
 * Optional, MinValue = 0 MaxValue = 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *pwMax;

/**
 * @abstract read-only, maps to DcacHW_D_Confg
 *
 * Optional, PttbHwConfig
 */
@property (nullable, strong, nonatomic, readonly) SDLPttbHwConfig hwConfig;

/**
 * @abstract read-only, maps to DcacOut_E_tot
 *
 * Optional, MinValue = 0 MaxValue = 65535
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *pwConsumption;

@end

NS_ASSUME_NONNULL_END
