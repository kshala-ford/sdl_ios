//
//  SDLObsshControlData.m
//  SmartDeviceLink
//
//  Created by Tanda, Satbir (S.S.) on 6/8/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import "SDLObsshControlData.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

@interface SDLObsshControlData()
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLBool> *checkGear;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLBool> *checkSteeringWheel;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLBool> *checkFlatSurface;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLBool> *checkTirePressure;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *payload;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *payloadPercent;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *taredPayload;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *trailerTongueLoad;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *trailerTongueLoadPercent;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *frontAxleLoadRestorationPercent;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *factoryCurbWeight;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *grossVehicleWeightRating;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *frontGrossAxleWeightRating;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *rearGrossAxleWeightRating;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *maxHitchTrailerWeight;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *maxBedTrailerWeight;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *frontAxleLoadRestorationUppr;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *frontAxleLoadRestorationLwr;
@property (nullable, strong, nonatomic, readwrite) SDLScreenMode screenModeStatus;
@property (nullable, strong, nonatomic, readwrite) SDLTareStatus tareStatus;
@property (nullable, strong, nonatomic, readwrite) SDLTailLightModeStatus tailLightModeStatus;
@property (nullable, strong, nonatomic, readwrite) NSNumber<SDLInt> *trailerWeightStatus;
@property (nullable, strong, nonatomic, readwrite) SDLFrontAxleLoadRestorationStatus frontAxleLoadRestorationStatus;
@end

@implementation SDLObsshControlData

- (instancetype)initWithCheckGear:(nullable NSNumber<SDLBool> *)checkGear checkSteeringWheel:(nullable NSNumber<SDLBool> *)checkSteeringWheel checkFlatSurface:(nullable NSNumber<SDLBool> *)checkFlatSurface checkTirePressure:(nullable NSNumber<SDLBool> *)checkTirePressure payload:(nullable NSNumber<SDLInt> *)payload payloadPercent:(nullable NSNumber<SDLInt> *)payloadPercent taredPayload:(nullable NSNumber<SDLInt> *)taredPayload trailerTongueLoad:(nullable NSNumber<SDLInt> *)trailerTongueLoad trailerTongueLoadPercent:(nullable NSNumber<SDLInt> *)trailerTongueLoadPercent frontAxleLoadRestorationPercent:(nullable NSNumber<SDLInt> *)frontAxleLoadRestorationPercent factoryCurbWeight:(nullable NSNumber<SDLInt> *)factoryCurbWeight grossVehicleWeightRating:(nullable NSNumber<SDLInt> *)grossVehicleWeightRating frontGrossAxleWeightRating:(NSNumber<SDLInt> *)frontGrossAxleWeightRating rearGrossAxleWeightRating:(nullable NSNumber<SDLInt> *)rearGrossAxleWeightRating maxHitchTrailerWeight:(nullable NSNumber<SDLInt> *)maxHitchTrailerWeight maxBedTrailerWeight:(nullable NSNumber<SDLInt> *)maxBedTrailerWeight frontAxleLoadRestorationUppr:(nullable NSNumber<SDLInt> *)frontAxleLoadRestorationUppr frontAxleLoadRestorationLwr:(nullable NSNumber<SDLInt> *)frontAxleLoadRestorationLwr screenModeStatus:(nullable SDLScreenMode)screenModeStatus tareStatus:(nullable SDLTareStatus)tareStatus tailLightModeStatus:(nullable SDLTailLightModeStatus)tailLightModeStatus trailerWeightStatus:(nullable NSNumber<SDLInt> *)trailerWeightStatus frontAxleLoadRestorationStatus:(nullable SDLFrontAxleLoadRestorationStatus)frontAxleLoadRestorationStatus screenMode:(nullable SDLScreenMode)screenMode tare:(nullable NSNumber<SDLBool> *)tare tailLightMode:(nullable SDLTailLightMode)tailLightMode trailerWeight:(nullable NSNumber<SDLInt> *)trailerWeight frontAxleLoadRestoration:(nullable SDLFrontAxleLoadRestoration)frontAxleLoadRestoration displayUnit:(nullable SDLObsshDisplayUnit)displayUnit passengerWeight:(nullable NSNumber<SDLInt> *)passengerWeight screenStep:(nullable NSNumber<SDLInt> *)screenStep {
    self = [self init];
    if(!self) {
        return nil;
    }

    self.checkGear = checkGear;
    self.checkSteeringWheel = checkSteeringWheel;
    self.checkFlatSurface = checkFlatSurface;
    self.checkTirePressure = checkTirePressure;
    self.payload = payload;
    self.payloadPercent = payloadPercent;
    self.taredPayload = taredPayload;
    self.trailerTongueLoad = trailerTongueLoad;
    self.trailerTongueLoadPercent = trailerTongueLoadPercent;
    self.frontAxleLoadRestorationPercent = frontAxleLoadRestorationPercent;
    self.factoryCurbWeight = factoryCurbWeight;
    self.grossVehicleWeightRating = grossVehicleWeightRating;
    self.frontGrossAxleWeightRating = frontGrossAxleWeightRating;
    self.rearGrossAxleWeightRating = rearGrossAxleWeightRating;
    self.maxHitchTrailerWeight = maxHitchTrailerWeight;
    self.maxBedTrailerWeight = maxBedTrailerWeight;
    self.frontAxleLoadRestorationUppr = frontAxleLoadRestorationUppr;
    self.frontAxleLoadRestorationLwr = frontAxleLoadRestorationLwr;
    self.screenModeStatus = screenModeStatus;
    self.tareStatus = tareStatus;
    self.tailLightModeStatus = tailLightModeStatus;
    self.trailerWeightStatus = trailerWeightStatus;
    self.frontAxleLoadRestorationStatus = frontAxleLoadRestorationStatus;
    self.screenMode = screenMode;
    self.tare = tare;
    self.tailLightMode = tailLightMode;
    self.trailerWeight = trailerWeight;
    self.frontAxleLoadRestoration = frontAxleLoadRestoration;
    self.displayUnit = displayUnit;
    self.passengerWeight = passengerWeight;
    self.screenStep = screenStep;

    return self;
}

- (void)setCheckGear:(NSNumber<SDLBool> *)checkGear {
    [self.store sdl_setObject:checkGear forName:SDLRPCParameterNameCheckGear];
}

- (NSNumber<SDLBool> *)checkGear {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckGear ofClass:NSNumber.class error:&error];
}

- (void)setCheckSteeringWheel:(NSNumber<SDLBool> *)checkSteeringWheel {
    [self.store sdl_setObject:checkSteeringWheel forName:SDLRPCParameterNameCheckSteeringWheel];
}

- (NSNumber<SDLBool> *)checkSteeringWheel {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckSteeringWheel ofClass:NSNumber.class error:&error];
}

- (void)setCheckFlatSurface:(NSNumber<SDLBool> *)checkFlatSurface {
    [self.store sdl_setObject:checkFlatSurface forName:SDLRPCParameterNameCheckFlatSurface];
}

- (NSNumber<SDLBool> *)checkFlatSurface {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckFlatSurface ofClass:NSNumber.class error:&error];
}

- (void)setCheckTirePressure:(NSNumber<SDLBool> *)checkTirePressure {
    [self.store sdl_setObject:checkTirePressure forName:SDLRPCParameterNameCheckTirePressure];
}

- (NSNumber<SDLBool> *)checkTirePressure {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameCheckTirePressure ofClass:NSNumber.class error:&error];
}

- (void)setPayload:(NSNumber<SDLBool> *)payload {
    [self.store sdl_setObject:payload forName:SDLRPCParameterNamePayload];
}

- (NSNumber<SDLInt> *)payload {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePayload ofClass:NSNumber.class error:&error];
}

- (void)setPayloadPercent:(NSNumber<SDLInt> *)payloadPercent {
    [self.store sdl_setObject:payloadPercent forName:SDLRPCParameterNamePayloadPercent];
}

- (NSNumber<SDLInt> *)payloadPercent {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePayloadPercent ofClass:NSNumber.class error:&error];
}

- (void)setTaredPayload:(NSNumber<SDLInt> *)taredPayload {
    [self.store sdl_setObject:taredPayload forName:SDLRPCParameterNameTaredPayload];
}

- (NSNumber<SDLInt> *)taredPayload {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTaredPayload ofClass:NSNumber.class error:&error];
}

- (void)setTrailerTongueLoad:(NSNumber<SDLInt> *)trailerTongueLoad {
    [self.store sdl_setObject:trailerTongueLoad forName:SDLRPCParameterNameTrailerTongueLoad];
}

- (NSNumber<SDLInt> *)trailerTongueLoad {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerTongueLoad ofClass:NSNumber.class error:&error];
}

- (void)setTrailerTongueLoadPercent:(NSNumber<SDLInt> *)trailerTongueLoadPercent {
    [self.store sdl_setObject:trailerTongueLoadPercent forName:SDLRPCParameterNameTrailerTongueLoadPercent];
}

- (NSNumber<SDLInt> *)trailerTongueLoadPercent {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerTongueLoadPercent ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationPercent:(NSNumber<SDLInt> *)frontAxleLoadRestorationPercent {
    [self.store sdl_setObject:frontAxleLoadRestorationPercent forName:SDLRPCParameterNameFrontAxleLoadRestorationPercent];
}

- (NSNumber<SDLInt> *)frontAxleLoadRestorationPercent {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationPercent ofClass:NSNumber.class error:&error];
}

- (void)setFactoryCurbWeight:(NSNumber<SDLInt> *)factoryCurbWeight {
    [self.store sdl_setObject:factoryCurbWeight forName:SDLRPCParameterNameFactoryCurbWeight];
}

- (NSNumber<SDLInt> *)factoryCurbWeight {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFactoryCurbWeight ofClass:NSNumber.class error:&error];
}

- (void)setGrossVehicleWeightRating:(NSNumber<SDLInt> *)grossVehicleWeightRating {
    [self.store sdl_setObject:grossVehicleWeightRating forName:SDLRPCParameterNameGrossVehicleWeightRating];
}

- (NSNumber<SDLInt> *)grossVehicleWeightRating {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameGrossVehicleWeightRating ofClass:NSNumber.class error:&error];
}

- (void)setFrontGrossAxleWeightRating:(NSNumber<SDLInt> *)frontGrossAxleWeightRating {
    [self.store sdl_setObject:frontGrossAxleWeightRating forName:SDLRPCParameterNameFrontGrossAxleWeightRating];
}

- (NSNumber<SDLInt> *)frontGrossAxleWeightRating {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontGrossAxleWeightRating ofClass:NSNumber.class error:&error];
}

- (void)setRearGrossAxleWeightRating:(NSNumber<SDLInt> *)rearGrossAxleWeightRating {
    [self.store sdl_setObject:rearGrossAxleWeightRating forName:SDLRPCParameterNameRearGrossAxleWeightRating];
}

- (NSNumber<SDLInt> *)rearGrossAxleWeightRating {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameRearGrossAxleWeightRating ofClass:NSNumber.class error:&error];
}

- (void)setMaxHitchTrailerWeight:(NSNumber<SDLInt> *)maxHitchTrailerWeight {
    [self.store sdl_setObject:maxHitchTrailerWeight forName:SDLRPCParameterNameMaxHitchTrailerWeight];
}

- (NSNumber<SDLInt> *)maxHitchTrailerWeight {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameMaxHitchTrailerWeight ofClass:NSNumber.class error:&error];
}

- (void)setMaxBedTrailerWeight:(NSNumber<SDLInt> *)maxBedTrailerWeight {
    [self.store sdl_setObject:maxBedTrailerWeight forName:SDLRPCParameterNameMaxBedTrailerWeight];
}

- (NSNumber<SDLInt> *)maxBedTrailerWeight {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameMaxBedTrailerWeight ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationUppr:(NSNumber<SDLInt> *)frontAxleLoadRestorationUppr {
    [self.store sdl_setObject:frontAxleLoadRestorationUppr forName:SDLRPCParameterNameFrontAxleLoadRestorationUppr];
}

- (NSNumber<SDLInt> *)frontAxleLoadRestorationUppr {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationUppr ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationLwr:(NSNumber<SDLInt> *)frontAxleLoadRestorationLwr {
    [self.store sdl_setObject:frontAxleLoadRestorationLwr forName:SDLRPCParameterNameFrontAxleLoadRestorationLwr];
}

- (NSNumber<SDLInt> *)frontAxleLoadRestorationLwr {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameFrontAxleLoadRestorationLwr ofClass:NSNumber.class error:&error];
}

- (void)setScreenModeStatus:(SDLScreenMode)screenModeStatus {
    [self.store sdl_setObject:screenModeStatus forName:SDLRPCParameterNameScreenModeStatus];
}

- (SDLScreenMode)screenModeStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameScreenModeStatus error:&error];
}

- (void)setTareStatus:(SDLTareStatus)tareStatus {
    [self.store sdl_setObject:tareStatus forName:SDLRPCParameterNameTareStatus];
}

- (SDLTareStatus)tareStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameTareStatus error:&error];
}

- (void)setTailLightModeStatus:(SDLTailLightModeStatus)tailLightModeStatus {
    [self.store sdl_setObject:tailLightModeStatus forName:SDLRPCParameterNameTailLightModeStatus];
}

- (SDLTailLightModeStatus)tailLightModeStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameTailLightModeStatus error:&error];
}

- (void)setTrailerWeightStatus:(NSNumber<SDLInt> *)trailerWeightStatus {
    [self.store sdl_setObject:trailerWeightStatus forName:SDLRPCParameterNameTrailerWeightStatus];
}

- (NSNumber<SDLInt> *)trailerWeightStatus {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerWeightStatus ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestorationStatus:(SDLFrontAxleLoadRestorationStatus)frontAxleLoadRestorationStatus {
    [self.store sdl_setObject:frontAxleLoadRestorationStatus forName:SDLRPCParameterNameFrontAxleLoadRestorationStatus];
}

- (SDLFrontAxleLoadRestorationStatus)frontAxleLoadRestorationStatus {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameFrontAxleLoadRestorationStatus error:&error];
}

- (void)setScreenMode:(SDLScreenMode)screenMode {
    [self.store sdl_setObject:screenMode forName:SDLRPCParameterNameScreenMode];
}

- (SDLScreenMode)screenMode {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameScreenMode error:&error];
}

- (void)setTare:(NSNumber<SDLBool> *)tare {
    [self.store sdl_setObject:tare forName:SDLRPCParameterNameTare];
}

- (NSNumber<SDLBool> *)tare {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTare ofClass:NSNumber.class error:&error];
}

- (void)setTailLightMode:(SDLTailLightMode)tailLightMode {
    [self.store sdl_setObject:tailLightMode forName:SDLRPCParameterNameTailLightMode];
}

- (SDLTailLightMode)tailLightMode {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameTailLightMode error:&error];
}

- (void)setTrailerWeight:(NSNumber<SDLInt> *)trailerWeight {
    [self.store sdl_setObject:trailerWeight forName:SDLRPCParameterNameTrailerWeight];
}

- (NSNumber<SDLInt> *)trailerWeight {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameTrailerWeight ofClass:NSNumber.class error:&error];
}

- (void)setFrontAxleLoadRestoration:(SDLFrontAxleLoadRestoration)frontAxleLoadRestoration {
    [self.store sdl_setObject:frontAxleLoadRestoration forName:SDLRPCParameterNameFrontAxleLoadRestoration];
}

- (SDLFrontAxleLoadRestoration)frontAxleLoadRestoration {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameFrontAxleLoadRestoration error:&error];
}

- (void)setDisplayUnit:(SDLObsshDisplayUnit)displayUnit {
    [self.store sdl_setObject:displayUnit forName:SDLRPCParameterNameDisplayUnit];
}

- (SDLObsshDisplayUnit)displayUnit {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameDisplayUnit error:&error];
}

- (void)setPassengerWeight:(NSNumber<SDLInt> *)passengerWeight {
    [self.store sdl_setObject:passengerWeight forName:SDLRPCParameterNamePassengerWeight];
}

- (NSNumber<SDLInt> *)passengerWeight {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNamePassengerWeight ofClass:NSNumber.class error:&error];
}

- (void)setScreenStep:(NSNumber<SDLInt> *)screenStep {
    [self.store sdl_setObject:screenStep forName:SDLRPCParameterNameScreenStep];
}

- (NSNumber<SDLInt> *)screenStep {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameScreenStep ofClass:NSNumber.class error:&error];
}

@end
