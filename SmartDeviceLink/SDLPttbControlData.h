//
//  SDLPttbControlData.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLPttbEngOnMsg.h"
#import "SDLPttbFaltMsg.h"
#import "SDLPttbHwConfig.h"
#import "SDLPttbPowerState.h"
#import "SDLPttbPowerStatus.h"
#import "SDLRPCStruct.h"

NS_ASSUME_NONNULL_BEGIN


@interface SDLPttbControlData : SDLRPCStruct

/**
 Convenience init for pttb control data with all properties

 @param state control command, maps to DcacPw_D_Rq
 @param reset control command, maps to DcacPwReset_B_Rq
 @param faltMsg maps to DcacFaltMsgTxt_D2_Rq, if *D2_Rq not available default to DcacFaltMsgTxt_D_Rq
 @param engOnMsg maps to DcacEngOnMsgTxt_D_Rq
 @param loFuelMsg maps to DcacLoFuelMsgTxt_D_Rq
 @param powerStatus maps to DcacElPw_D_Stat
 @param outletA maps to DcacOut1_Pw2_Dsply
 @param outletB maps to DcacOut2_Pw2_Dsply
 @param pwMax maps to DcacOut_Pw_DsplyMx
 @param hwConfig maps to DcacHW_D_Confg
 @param pwConsumption maps to DcacOut_E_tot
 @return An instance of the SDLPttbControlCapabilities class
 */
- (instancetype)initWithState:(nullable SDLPttbPowerState)state reset:(nullable NSNumber<SDLBool> *)reset faltMsg:(nullable SDLPttbFaltMsg)faltMsg engOnMsg:(nullable SDLPttbEngOnMsg)engOnMsg loFuelMsg:(nullable NSNumber<SDLInt> *)loFuelMsg powerStatus:(nullable SDLPttbPowerStatus)powerStatus outletA:(nullable NSNumber<SDLInt> *)outletA outletB:(nullable NSNumber<SDLInt> *)outletB pwMax:(nullable NSNumber<SDLInt> *)pwMax hwConfig:(nullable SDLPttbHwConfig)hwConfig pwConsumption:(nullable NSNumber<SDLInt> *)pwConsumption;

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
@property (nullable, strong, nonatomic, readonly) SDLPttbFaltMsg faltMsg;

/**
 * @abstract read-only,  maps to DcacElPw_D_Stat
 *
 * Optional, PttbEngOnMsg
 */
@property (nullable, strong, nonatomic, readonly) SDLPttbEngOnMsg engOnMsg;

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
@property (nullable, strong, nonatomic, readonly) SDLPttbPowerStatus powerStatus;

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

