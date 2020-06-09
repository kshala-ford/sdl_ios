//
//  SDLObsshControlData.h
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 6/8/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLFrontAxleLoadRestoration.h"
#import "SDLFrontAxleLoadRestorationStatus.h"
#import "SDLObsshDisplayUnit.h"
#import "SDLRPCMessage.h"
#import "SDLScreenMode.h"
#import "SDLTailLightMode.h"
#import "SDLTailLightModeStatus.h"
#import "SDLTareStatus.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLObsshControlData : NSObject

/**
 * read-only, maps to VehPayloadGear_B_Stat
 *
 * Optional
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLBool> *checkGear;

/**
 * read-only, maps to VehPayloadStew_B_Stat
 *
 * Optional
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLBool> *checkSteeringWheel;

/**
 * read-only, maps to VehPayloadFlat_B_Stat
 *
 * Optional
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLBool> *checkFlatSurface;

/**
 * read-only, maps to VehPayloadTireP_B_Stat
 *
 * Optional
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLBool> *checkTirePressure;

/**
 * read-only, maps to VehPayload_M_Est, 0x3FE=NoDataExists, 0x3FF=Faulty, resolution=5Kg
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *payload;

/**
 * read-only, maps to VehPayload_Pc_Est, 0x7E=NoDataExists, 0x7F=Faulty, resolution=1%
 *
 * Optional, Integer 0 - 127
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *payloadPercent;

/**
 * read-only, maps to VehPayloadAdd_M_Est, 0x7FE=NoDataExists, 0x7FF=Faulty, resolution=5Kg, offset=-1024
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *taredPayload;

/**
 * read-only, maps to TrlrTngLoad_M_Est, 0x7FE=NoDataExists, 0x7FF=Faulty, resolution=10Kg, offset=-1024
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *trailerTongueLoad;

/**
 * read-only, maps to TrlrTngLoad_Pc_Est, 0x7E=NoDataExists, 0x7F=Faulty, resolution=1%
 *
 * Optional, Integer 0 - 127
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *trailerTongueLoadPercent;

/**
 * read-only, maps to VehFalr_Pc_Est, 0x7E=NoDataExists, 0x7F=Faulty, resolution=1%
 *
 * Optional, Integer 0 - 127
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *frontAxleLoadRestorationPercent;

/**
 * read-only, maps to VehCurb_M_Actl, resolution=10Kg
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *factoryCurbWeight;

/**
 * read-only, maps to VehGvwr_M_Actl, resolution=10Kg
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *grossVehicleWeightRating;

/**
 * read-only, reserved for future use
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *frontGrossAxleWeightRating;

/**
 * read-only, reserved for future use
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *rearGrossAxleWeightRating;

/**
 * read-only, maps to DID Config Block-DE09 Byte-22, size of 11 bits, resolution=10Kg
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *maxHitchTrailerWeight;

/**
 * read-only, maps to DID Config Block-DE09 Byte-24, size of 11 bits, resolution=10Kg
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *maxBedTrailerWeight;

/**
 * read-only, maps to DID Config Block-DE09 Byte-20, size of 8 bits
 *
 * Optional, Integer 0 - 255
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *frontAxleLoadRestorationUppr;

/**
 * read-only, maps to DID Config Block-DE09 Byte-21, size of 8 bits
 *
 * Optional, Integer 0 - 255
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *frontAxleLoadRestorationLwr;

/**
 * read-only, maps to VehPayloadScrn_D_Stat
 *
 * Optional, SDLScreenMode
 */
@property (nullable, strong, nonatomic, readonly) SDLScreenMode screenModeStatus;

/**
 * read-only, maps to TailLghtLoadMde_D_Stat
 *
 * Optional, SDLTailLightModeStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLTailLightModeStatus tailLightModeStatus;

/**
 * read-only, maps to Trlr_M_Actl, resolution=10Kg
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic, readonly) NSNumber<SDLInt> *trailerWeightStatus;

/**
 * read-only, maps to VehFalr_D_Stat
 *
 * Optional, SDLFrontAxleLoadRestorationStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLFrontAxleLoadRestorationStatus frontAxleLoadRestorationStatus;

/**
 * read-only, maps to VehPayloadTare_D_Stat
 *
 * Optional, SDLTareStatus
 */
@property (nullable, strong, nonatomic, readonly) SDLTareStatus tareStatus;

/**
 * control command, maps to VehPayloadScrn_D_Rq
 *
 * Optional, SDLScreenMode
 */
@property (nullable, strong, nonatomic) SDLScreenMode screenMode;

/**
 * control command, maps to VehPayloadTare_D_Rq
 *
 * Optional
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *tare;

/**
 * control command, maps to TailLghtLoadMde_D_Rq
 *
 * Optional, SDLTailLightMode
 */
@property (nullable, strong, nonatomic) SDLTailLightMode tailLightMode;

/**
 * control command, maps to Trlr_M_Rq, resolution=10Kg
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic) NSNumber<SDLInt> *trailerWeight;

/**
 * control command, maps to VehFalr_D_Rq
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic) SDLFrontAxleLoadRestoration frontAxleLoadRestoration;

/**
 * read write, maps to xxx_Rq for write and xxx_Stat for read
 *
 * Optional, Integer 0 - 2047
 */
@property (nullable, strong, nonatomic) SDLObsshDisplayUnit displayUnit;

/**
 * read write, maps to xxx_Rq for write and xxx_Stat for read, when read 0x3FE=NoDataExists, 0x3FF=Faulty, resolution=5Kg
 *
 * Optional, Integer 0 - 1023
 */
@property (nullable, strong, nonatomic) NSNumber<SDLInt> *passengerWeight;

/**
 * read write, maps to xxx_Rq for write and xxx_Stat for read, 0=NoDataExists
 *
 * Optional, Integer 0 - 14
 */
@property (nullable, strong, nonatomic) NSNumber<SDLInt> *screenStep;

@end

NS_ASSUME_NONNULL_END
