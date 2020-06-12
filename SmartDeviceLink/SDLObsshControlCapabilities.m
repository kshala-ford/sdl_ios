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

- (void)setCheckGearAvailable:(NSNumber<SDLBool> *)checkGearAvailable {
    [self.store sdl_setObject:checkGearAvailable forName:SDLRPCParameterNameCheckGearAvailable];
}

- (NSNumber<SDLBool> *)checkGearAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckGearAvailable ofClass:NSNumber.class error:&error];
}

- (void)setCheckSteeringWheelAvailable:(NSNumber<SDLBool> *)checkSteeringWheelAvailable {
    [self.store sdl_setObject:checkSteeringWheelAvailable forName:SDLRPCParameterNameCheckSteeringWheelAvailable];
}

- (NSNumber<SDLBool> *)checkSteeringWheelAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckSteeringWheelAvailable ofClass:NSNumber.class error:&error];
}

- (void)setCheckFlatSurfaceAvailable:(NSNumber<SDLBool> *)checkFlatSurfaceAvailable {
    [self.store sdl_setObject:checkFlatSurfaceAvailable forName:SDLRPCParameterNameCheckFlatSurfaceAvailable];
}

- (NSNumber<SDLBool> *)checkFlatSurfaceAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckFlatSurfaceAvailable ofClass:NSNumber.class error:&error];
}

- (void)setCheckTirePressureAvailable:(NSNumber<SDLBool> *)checkTirePressureAvailable {
    [self.store sdl_setObject:checkTirePressureAvailable forName:SDLRPCParameterNameCheckTirePressureAvailable];
}

- (NSNumber<SDLBool> *)checkTirePressureAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckTirePressureAvailable ofClass:NSNumber.class error:&error];
}

- (void)setPayloadAvailable:(NSNumber<SDLBool> *)payloadAvailable {
    [self.store sdl_setObject:payloadAvailable forName:SDLRPCParameterNamePayloadAvailable];
}

- (NSNumber<SDLBool> *)payloadAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePayloadAvailable ofClass:NSNumber.class error:&error];
}

- (void)setPayloadPercentAvailable:(NSNumber<SDLBool> *)payloadPercentAvailable {
    [self.store sdl_setObject:payloadPercentAvailable forName:SDLRPCParameterNamePayloadPercentAvailable];
}

- (NSNumber<SDLBool> *)payloadPercentAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePayloadPercentAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTaredPayloadAvailable:(NSNumber<SDLBool> *)taredPayloadAvailable {
    [self.store sdl_setObject:taredPayloadAvailable forName:SDLRPCParameterNameTaredPayloadAvailable];
}

- (NSNumber<SDLBool> *)taredPayloadAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTaredPayloadAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTrailerTongueLoadAvailable:(NSNumber<SDLBool> *)trailerTongueLoadAvailable {
    [self.store sdl_setObject:trailerTongueLoadAvailable forName:SDLRPCParameterNameTrailerTongueLoadAvailable];
}

- (NSNumber<SDLBool> *)trailerTongueLoadAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerTongueLoadAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTrailerTongueLoadPercentAvailable:(NSNumber<SDLBool> *)trailerTongueLoadPercentAvailable {
    [self.store sdl_setObject:trailerTongueLoadPercentAvailable forName:SDLRPCParameterNameTrailerTongueLoadPercentAvailable];
}

- (NSNumber<SDLBool> *)trailerTongueLoadPercentAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerTongueLoadPercentAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationPercentAvailable:(NSNumber<SDLBool> *)frontAxleLoadRestorationPercentAvailable {
    [self.store sdl_setObject:frontAxleLoadRestorationPercentAvailable forName:SDLRPCParameterNameFrontAxleLoadRestorationPercentAvailable];
}

- (NSNumber<SDLBool> *)frontAxleLoadRestorationPercentAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationPercentAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFactoryCurbWeightAvailable:(NSNumber<SDLBool> *)factoryCurbWeightAvailable {
    [self.store sdl_setObject:factoryCurbWeightAvailable forName:SDLRPCParameterNameFactoryCurbWeightAvailable];
}

- (NSNumber<SDLBool> *)factoryCurbWeightAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFactoryCurbWeightAvailable ofClass:NSNumber.class error:&error];
}

- (void)setGrossVehicleWeightRatingAvailable:(NSNumber<SDLBool> *)grossVehicleWeightRatingAvailable {
    [self.store sdl_setObject:grossVehicleWeightRatingAvailable forName:SDLRPCParameterNameGrossVehicleWeightRatingAvailable];
}

- (NSNumber<SDLBool> *)grossVehicleWeightRatingAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameGrossVehicleWeightRatingAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontGrossAxleWeightRatingAvailable:(NSNumber<SDLBool> *)frontGrossAxleWeightRatingAvailable {
    [self.store sdl_setObject:frontGrossAxleWeightRatingAvailable forName:SDLRPCParameterNameFrontGrossAxleWeightRatingAvailable];
}

- (NSNumber<SDLBool> *)frontGrossAxleWeightRatingAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontGrossAxleWeightRatingAvailable ofClass:NSNumber.class error:&error];
}

- (void)setRearGrossAxleWeightRatingAvailable:(NSNumber<SDLBool> *)rearGrossAxleWeightRatingAvailable {
    [self.store sdl_setObject:rearGrossAxleWeightRatingAvailable forName:SDLRPCParameterNameRearGrossAxleWeightRatingAvailable];
}

- (NSNumber<SDLBool> *)rearGrossAxleWeightRatingAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameRearGrossAxleWeightRatingAvailable ofClass:NSNumber.class error:&error];
}

- (void)setMaxHitchTrailerWeightAvailable:(NSNumber<SDLBool> *)maxHitchTrailerWeightAvailable {
    [self.store sdl_setObject:maxHitchTrailerWeightAvailable forName:SDLRPCParameterNameMaxHitchTrailerWeightAvailable];
}

- (NSNumber<SDLBool> *)maxHitchTrailerWeightAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameMaxHitchTrailerWeightAvailable ofClass:NSNumber.class error:&error];
}

- (void)setMaxBedTrailerWeightAvailable:(NSNumber<SDLBool> *)maxBedTrailerWeightAvailable {
    [self.store sdl_setObject:maxBedTrailerWeightAvailable forName:SDLRPCParameterNameMaxBedTrailerWeightAvailable];
}

- (NSNumber<SDLBool> *)maxBedTrailerWeightAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameMaxBedTrailerWeightAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationUpprAvailable:(NSNumber<SDLBool> *)frontAxleLoadRestorationUpprAvailable {
    [self.store sdl_setObject:frontAxleLoadRestorationUpprAvailable forName:SDLRPCParameterNameFrontAxleLoadRestorationUpprAvailable];
}

- (NSNumber<SDLBool> *)frontAxleLoadRestorationUpprAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationUpprAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationLwrAvailable:(NSNumber<SDLBool> *)frontAxleLoadRestorationLwrAvailable {
    [self.store sdl_setObject:frontAxleLoadRestorationLwrAvailable forName:SDLRPCParameterNameFrontAxleLoadRestorationLwrAvailable];
}

- (NSNumber<SDLBool> *)frontAxleLoadRestorationLwrAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationLwrAvailable ofClass:NSNumber.class error:&error];
}

- (void)setScreenStatusModeAvailable:(NSNumber<SDLBool> *)screenModeStatusAvailable {
    [self.store sdl_setObject:screenModeStatusAvailable forName:SDLRPCParameterNameScreenModeStatusAvailable];
}

- (NSNumber<SDLBool> *)screenModeStatusAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameScreenModeStatusAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTareStatusAvailable:(NSNumber<SDLBool> *)tareStatusAvailable {
    [self.store sdl_setObject:tareStatusAvailable forName:SDLRPCParameterNameTareStatusAvailable];
}

- (NSNumber<SDLBool> *)tareStatusAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTareStatusAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTailLightModeStatusAvailable:(NSNumber<SDLBool> *)tailLightModeStatusAvailable {
    [self.store sdl_setObject:tailLightModeStatusAvailable forName:SDLRPCParameterNameTailLightModeStatusAvailable];
}

- (NSNumber<SDLBool> *)tailLightModeStatusAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTailLightModeStatusAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTrailerWeightStatusAvailable:(NSNumber<SDLBool> *)trailerWeightStatusAvailable {
    [self.store sdl_setObject:trailerWeightStatusAvailable forName:SDLRPCParameterNameTrailerWeightStatusAvailable];
}

- (NSNumber<SDLBool> *)trailerWeightStatusAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerWeightStatusAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationStatusAvailable:(NSNumber<SDLBool> *)frontAxleLoadRestorationStatusAvailable {
    [self.store sdl_setObject:frontAxleLoadRestorationStatusAvailable forName:SDLRPCParameterNameFrontAxleLoadRestorationStatusAvailable];
}

- (NSNumber<SDLBool> *)frontAxleLoadRestorationStatusAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationStatusAvailable ofClass:NSNumber.class error:&error];
}

- (void)setScreenModeAvailable:(NSNumber<SDLBool> *)screenModeAvailable {
    [self.store sdl_setObject:screenModeAvailable forName:SDLRPCParameterNameScreenModeAvailable];
}

- (NSNumber<SDLBool> *)screenModeAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameScreenModeAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTareAvailable:(NSNumber<SDLBool> *)tareAvailable {
    [self.store sdl_setObject:tareAvailable forName:SDLRPCParameterNameTareAvailable];
}

- (NSNumber<SDLBool> *)tareAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTareAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTailLightModeAvailable:(NSNumber<SDLBool> *)tailLightModeAvailable {
    [self.store sdl_setObject:tailLightModeAvailable forName:SDLRPCParameterNameTailLightModeAvailable];
}

- (NSNumber<SDLBool> *)tailLightModeAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTailLightModeAvailable ofClass:NSNumber.class error:&error];
}

- (void)setTrailerWeightAvailable:(NSNumber<SDLBool> *)trailerWeightAvailable {
    [self.store sdl_setObject:trailerWeightAvailable forName:SDLRPCParameterNameTrailerWeightAvailable];
}

- (NSNumber<SDLBool> *)trailerWeightAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerWeightAvailable ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationAvailable:(NSNumber<SDLBool> *)frontAxleLoadRestorationAvailable {
    [self.store sdl_setObject:frontAxleLoadRestorationAvailable forName:SDLRPCParameterNameFrontAxleLoadRestorationAvailable];
}

- (NSNumber<SDLBool> *)frontAxleLoadRestorationAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationAvailable ofClass:NSNumber.class error:&error];
}

- (void)setDisplayUnitAvailable:(NSNumber<SDLBool> *)displayUnitAvailable {
    [self.store sdl_setObject:displayUnitAvailable forName:SDLRPCParameterNameDisplayUnitAvailable];
}

- (NSNumber<SDLBool> *)displayUnitAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameDisplayUnitAvailable ofClass:NSNumber.class error:&error];
}

- (void)setPassengerWeightAvailable:(NSNumber<SDLBool> *)passengerWeightAvailable {
    [self.store sdl_setObject:passengerWeightAvailable forName:SDLRPCParameterNamePassengerWeightAvailable];
}

- (NSNumber<SDLBool> *)passengerWeightAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePassengerWeightAvailable ofClass:NSNumber.class error:&error];
}

- (void)setScreenStepAvailable:(NSNumber<SDLBool> *)screenStepAvailable {
    [self.store sdl_setObject:screenStepAvailable forName:SDLRPCParameterNameScreenStepAvailable];
}

- (NSNumber<SDLBool> *)screenStepAvailable {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameScreenStepAvailable ofClass:NSNumber.class error:&error];
}

@end
