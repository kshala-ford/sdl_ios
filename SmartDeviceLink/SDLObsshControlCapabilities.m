//
//  SDLObsshControlCapabilities.m
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 6/9/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLObsshControlCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

@implementation SDLObsshControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName checkGearAvailable:(nullable NSNumber<SDLBool> *)checkGearAvailable checkSteeringWheelAvailable:(nullable NSNumber<SDLBool> *)checkSteeringWheelAvailable checkFlatSurfaceAvailable:(nullable NSNumber<SDLBool> *)checkFlatSurfaceAvailable checkTirePressureAvailable:(nullable NSNumber<SDLBool> *)checkTirePressureAvailable payloadAvailable:(nullable NSNumber<SDLBool> *)payloadAvailable payloadPercentAvailable:(nullable NSNumber<SDLBool> *)payloadPercentAvailable taredPayloadAvailable:(nullable NSNumber<SDLBool> *)taredPayloadAvailable trailerTongueLoadAvailable:()trailerTongueLoadAvailable trailerTongueLoadPercentAvailable:(nullable NSNumber<SDLBool> *)trailerTongueLoadPercentAvailable frontAxleLoadRestorationPercentAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationPercentAvailable factoryCurbWeightAvailable:(nullable NSNumber<SDLBool> *)factoryCurbWeightAvailable grossVehicleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)grossVehicleWeightRatingAvailable frontGrossAxleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)frontGrossAxleWeightRatingAvailable rearGrossAxleWeightRatingAvailable:(nullable NSNumber<SDLBool> *)rearGrossAxleWeightRatingAvailable maxHitchTrailerWeightAvailable:(nullable NSNumber<SDLBool> *)maxHitchTrailerWeightAvailable maxBedTrailerWeightAvailable:(nullable NSNumber<SDLBool> *)maxBedTrailerWeightAvailable frontAxleLoadRestorationUpprAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationUpprAvailable frontAxleLoadRestorationLwrAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationLwrAvailable screenModeStatusAvailable:(nullable NSNumber<SDLBool> *)screenModeStatusAvailable tareStatusAvailable:(nullable NSNumber<SDLBool> *)tareStatusAvailable tailLightModeStatusAvailable:(nullable NSNumber<SDLBool> *)tailLightModeStatusAvailable trailerWeightStatusAvailable:(nullable NSNumber<SDLBool> *)trailerWeightStatusAvailable frontAxleLoadRestorationStatusAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationStatusAvailable screenModeAvailable:(nullable NSNumber<SDLBool> *)screenModeAvailable tareAvailable:(nullable NSNumber<SDLBool> *)tareAvailable tailLightModeAvailable:(nullable NSNumber<SDLBool> *)tailLightModeAvailable trailerWeightAvailable:(nullable NSNumber<SDLBool> *)trailerWeightAvailable frontAxleLoadRestorationAvailable:(nullable NSNumber<SDLBool> *)frontAxleLoadRestorationAvailable displayUnitAvailable:(nullable NSNumber<SDLBool> *)displayUnitAvailable passengerWeightAvailable:(nullable NSNumber<SDLBool> *)passengerWeightAvailable screenStepAvailable:(nullable NSNumber<SDLBool> *)screenStepAvailable {
    self = [self init];
    if(!self) {
        return nil;
    }

    self.moduleName = moduleName;
    self.checkGearAvailable = checkGearAvailable;
    self.checkSteeringWheelAvailable = checkSteeringWheelAvailable;
    self.checkFlatSurfaceAvailable = checkFlatSurfaceAvailable;
    self.checkTirePressureAvailable = checkTirePressureAvailable;
    self.payloadAvailable = payloadAvailable;
    self.payloadPercentAvailable = payloadPercentAvailable;
    self.taredPayloadAvailable = taredPayloadAvailable;
    self.trailerTongueLoadAvailable = trailerTongueLoadAvailable;
    self.trailerTongueLoadPercentAvailable = trailerTongueLoadPercentAvailable;
    self.frontAxleLoadRestorationPercentAvailable = frontAxleLoadRestorationPercentAvailable;
    self.factoryCurbWeightAvailable = factoryCurbWeightAvailable;
    self.grossVehicleWeightRatingAvailable = grossVehicleWeightRatingAvailable;
    self.frontGrossAxleWeightRatingAvailable = frontGrossAxleWeightRatingAvailable;
    self.rearGrossAxleWeightRatingAvailable = rearGrossAxleWeightRatingAvailable;
    self.maxHitchTrailerWeightAvailable = maxHitchTrailerWeightAvailable;
    self.maxBedTrailerWeightAvailable = maxBedTrailerWeightAvailable;
    self.frontAxleLoadRestorationUpprAvailable = frontAxleLoadRestorationUpprAvailable;
    self.frontAxleLoadRestorationLwrAvailable = frontAxleLoadRestorationLwrAvailable;
    self.screenModeStatusAvailable = screenModeStatusAvailable;
    self.tareAvailable = tareAvailable;
    self.tailLightModeAvailable = tailLightModeAvailable;
    self.trailerWeightAvailable = trailerWeightAvailable;
    self.frontAxleLoadRestorationAvailable = frontAxleLoadRestorationAvailable;
    self.displayUnitAvailable = displayUnitAvailable;
    self.passengerWeightAvailable = passengerWeightAvailable;
    self.screenStepAvailable = screenStepAvailable;

    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [self.store sdl_setObject:moduleName forName:SDLRPCParameterNameModuleName];
}

- (NSString *)moduleName {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameModuleName ofClass:NSString.class error:&error];
}

@end
