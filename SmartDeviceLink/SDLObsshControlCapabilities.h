//
//  SDLObsshControlCapabilities.h
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 6/9/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLRPCMessage.h"
#import "SDLModuleInfo.h"

NS_ASSUME_NONNULL_BEGIN

/// Contains information about a OBSSH control module's capabilities.

@interface SDLObsshControlCapabilities : SDLRPCStruct

- (instancetype)initWithModuleName:(NSString *)moduleName checkGearAvailable:(nullable NSNumber<SDLBool> *)checkGearAvailable checkSteeringWheelAvailable:(nullable NSNumber<SDLBool> *)checkSteeringWheelAvailable checkFlatSurfaceAvailable:(nullable NSNumber<SDLBool> *)checkFlatSurfaceAvailable checkTirePressureAvailable:(nullable NSNumber<SDLBool> *)checkTirePressureAvailable payloadAvailable:(nullable NSNumber<SDLBool> *)payloadAvailable payloadPercentAvailable:(nullable NSNumber<SDLBool> *)payloadPercentAvailable taredPayloadAvailable:(nullable NSNumber<SDLBool> *)taredPayloadAvailable trailerTongueLoadAvailable:(nullable NSNumber<SDLBool> *)trailerTongueLoadAvailable trailerTongueLoadPercentAvailable:(nullable NSNumber<SDLBool> *)trailerTongueLoadPercentAvailable frontAxleLoadRestorationPercentAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationPercentAvailable factoryCurbWeightAvailable:(nullable NSNumber<SDLBool> *)factoryCurbWeightAvailable grossVehicleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)grossVehicleWeightRatingAvailable frontGrossAxleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)frontGrossAxleWeightRatingAvailable rearGrossAxleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)rearGrossAxleWeightRatingAvailable maxHitchTrailerWeightAvailable:(nullable NSNumber<SDLBool> *)maxHitchTrailerWeightAvailable maxBedTrailerWeightAvailable:(nullable NSNumber<SDLBool> *)maxBedTrailerWeightAvailable frontAxleLoadRestorationUpprAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationUpprAvailable frontAxleLoadRestorationLwrAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationLwrAvailable screenModeStatusAvailable:(nullable NSNumber<SDLBool> *)screenModeStatusAvailable tareStatusAvailable:(nullable NSNumber<SDLBool> *)tareStatusAvailable tailLightModeStatusAvailable:(nullable NSNumber<SDLBool> *)tailLightModeStatusAvailable trailerWeightStatusAvailable:(nullable NSNumber<SDLBool> *)trailerWeightStatusAvailable frontAxleLoadRestorationStatusAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationStatusAvailable screenModeAvailable:(nullable NSNumber<SDLBool> *)screenModeAvailable tareAvailable:(nullable NSNumber<SDLBool> *)tareAvailable tailLightModeAvailable:(nullable NSNumber<SDLBool> *)tailLightModeAvailable trailerWeightAvailable:(nullable NSNumber<SDLBool> *)trailerWeightAvailable frontAxleLoadRestorationAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationAvailable displayUnitAvailable:(nullable NSNumber<SDLBool> *)displayUnitAvailable passengerWeightAvailable:(nullable NSNumber<SDLBool> *)passengerWeightAvailable screenStepAvailable:(nullable NSNumber<SDLBool> *)screenStepAvailable;

/**
 * @abstract  The short friendly name of the light control module.
 * It should not be used to identify a module by mobile application.
 *
 * Required, Max String length 100 chars
 */
@property (strong, nonatomic) NSString *moduleName;

/**
 * @abstract Availability of gear.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *checkGearAvailable;

/**
 * @abstract Availability of steering wheel.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *checkSteeringWheelAvailable;

/**
 * @abstract Availability of flat surface.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *checkFlatSurfaceAvailable;

/**
 * @abstract Availability of tire pressure.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *checkTirePressureAvailable;

/**
 * @abstract Availability of payload.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *payloadAvailable;

/**
 * @abstract Availability of payload percentage.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *payloadPercentAvailable;

/**
 * @abstract Availability of tared payload.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *taredPayloadAvailable;

/**
 * @abstract Availability of trailer tongue load.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *trailerTongueLoadAvailable;

/**
 * @abstract Availability of trailer tongue load percentage.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *trailerTongueLoadPercentAvailable;

/**
 * @abstract Availability of front axle load restoration percent.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontAxleLoadRestorationPercentAvailable;

/**
 * @abstract Availability of factory curb weight.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *factoryCurbWeightAvailable;

/**
 * @abstract Availability of gross vehicle weight rating.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *grossVehicleWeightRatingAvailable;

/**
 * @abstract Availability of front gross axle weight rating.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontGrossAxleWeightRatingAvailable;

/**
 * @abstract Availability of rear gross axle weight rating.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *rearGrossAxleWeightRatingAvailable;

/**
 * @abstract Availability of max hitch trailer weight.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *maxHitchTrailerWeightAvailable;

/**
 * @abstract Availability of max bed trailer weight available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *maxBedTrailerWeightAvailable;

/**
 * @abstract Availability of front axle load restoration uppr.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontAxleLoadRestorationUpprAvailable;

/**
 * @abstract Availability of front axle load restoration lwr.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontAxleLoadRestorationLwrAvailable;

/**
 * @abstract Availability of screen mode status.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *screenModeStatusAvailable;

/**
 * @abstract Availability of tare status.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *tareStatusAvailable;

/**
 * @abstract Availability of tail light mode status.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *tailLightModeStatusAvailable;

/**
 * @abstract Availability of trailer weight status.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *trailerWeightStatusAvailable;

/**
 * @abstract Availability of front axle load restoration sstatus.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontAxleLoadRestorationStatusAvailable;

/**
 * @abstract Availability of screen mode.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *screenModeAvailable;

/**
 * @abstract Availability of tare.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *tareAvailable;

/**
 * @abstract Availability of tail light mode.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *tailLightModeAvailable;

/**
 * @abstract Availability of trailer weight.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *trailerWeightAvailable;

/**
 * @abstract Availability of front axle load restoration.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *frontAxleLoadRestorationAvailable;

/**
 * @abstract Availability of display unit.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *displayUnitAvailable;

/**
 * @abstract Availability of passenger weight.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *passengerWeightAvailable;

/**
 * @abstract Availability of screen step.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *screenStepAvailable;

@end

NS_ASSUME_NONNULL_END
