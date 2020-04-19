//
//  SDLPttbControlData.m
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLPttbControlData.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLPttbControlData

- (instancetype)initWithState:(nullable SDLPttbPowerState)state reset:(BOOL)reset faltMsg:(nullable SDLPttbFaltMsg)faltMsg engOnMsg:(nullable SDLPttbEngOnMsg)engOnMsg loFuelMsg:(UInt8)loFuelMsg powerStatus:(nullable SDLPttbPowerStatus)powerStatus outletA:(UInt16)outletA outletB:(UInt16)outletB pwMax:(UInt16)pwMax hwConfig:(nullable SDLPttbHwConfig)hwConfig pwConsumption:(UInt16)pwConsumption {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.state = state;
    self.reset = @(reset);
    self.faltMsg = faltMsg;
    self.engOnMsg = engOnMsg;
    self.loFuelMsg = @(loFuelMsg);
    self.powerStatus = powerStatus;
    self.outletA = @(outletA);
    self.outletB = @(outletB);
    self.pwMax = @(pwMax);
    self.hwConfig = hwConfig;
    self.pwConsumption = @(pwConsumption);

    return self;
}

- (void)setState:(nullable SDLPttbPowerState)state {
    [self.store sdl_setObject:state forName:SDLRPCParameterNameState];
}

- (nullable SDLPttbPowerState)state {
    return [self.store sdl_enumForName:SDLRPCParameterNameState error:nil];
}

- (void)setReset:(nullable NSNumber<SDLBool> *)reset {
    [self.store sdl_setObject:reset forName:SDLRPCParameterNameReset];
}

- (nullable NSNumber<SDLBool> *)reset {
    return [self.store sdl_objectForName:SDLRPCParameterNameReset ofClass:NSNumber.class error:nil];
}

- (void)setFaltMsg:(nullable SDLPttbFaltMsg)faltMsg {
    [self.store sdl_setObject:faltMsg forName:SDLRPCParameterNameFaltMsg];
}

- (nullable SDLPttbFaltMsg)faltMsg {
    return [self.store sdl_enumForName:SDLRPCParameterNameFaltMsg error:nil];
}

- (void)setEngOnMsg:(nullable SDLPttbEngOnMsg)engOnMsg {
    [self.store sdl_setObject:engOnMsg forName:SDLRPCParameterNameEngineOnMsg];
}

- (nullable SDLPttbEngOnMsg)engOnMsg {
    return [self.store sdl_enumForName:SDLRPCParameterNameEngineOnMsg error:nil];
}

- (void)setLoFuelMsg:(nullable NSNumber<SDLInt> *)loFuelMsg {
    [self.store sdl_setObject:loFuelMsg forName:SDLRPCParameterNameLowFuelMsg];
}

- (nullable NSNumber<SDLInt> *)loFuelMsg {
    return [self.store sdl_objectForName:SDLRPCParameterNameLowFuelMsg ofClass:NSNumber.class error:nil];
}

- (void)setPowerStatus:(nullable SDLPttbPowerStatus)powerStatus {
    [self.store sdl_setObject:powerStatus forName:SDLRPCParameterNamePowerStatus];
}

- (nullable SDLPttbPowerStatus)powerStatus {
    return [self.store sdl_enumForName:SDLRPCParameterNamePowerStatus error:nil];
}

- (void)setOutletA:(nullable NSNumber<SDLInt> *)outletA {
    [self.store sdl_setObject:outletA forName:SDLRPCParameterNameOutletA];
}

- (nullable NSNumber<SDLInt> *)outletA {
    return [self.store sdl_objectForName:SDLRPCParameterNameOutletA ofClass:NSNumber.class error:nil];
}

- (void)setOutletB:(nullable NSNumber<SDLInt> *)outletB {
    [self.store sdl_setObject:outletB forName:SDLRPCParameterNameOutletB];
}

- (nullable NSNumber<SDLInt> *)outletB {
    return [self.store sdl_objectForName:SDLRPCParameterNameOutletB ofClass:NSNumber.class error:nil];
}

- (void)setPwMax:(nullable NSNumber<SDLInt> *)pwMax {
    [self.store sdl_setObject:pwMax forName:SDLRPCParameterNamePwMax];
}

- (nullable NSNumber<SDLInt> *)pwMax {
    return [self.store sdl_objectForName:SDLRPCParameterNamePwMax ofClass:NSNumber.class error:nil];
}

- (void)setHwConfig:(nullable SDLPttbHwConfig)hwConfig {
    [self.store sdl_setObject:hwConfig forName:SDLRPCParameterNameHwConfig];
}

- (nullable SDLPttbHwConfig)hwConfig {
    return [self.store sdl_enumForName:SDLRPCParameterNameHwConfig error:nil];
}

- (void)setPwConsumption:(nullable NSNumber<SDLInt> *)pwConsumption {
    [self.store sdl_setObject:pwConsumption forName:SDLRPCParameterNamePwConsumption];
}

- (nullable NSNumber<SDLInt> *)pwConsumption {
    return [self.store sdl_objectForName:SDLRPCParameterNamePwConsumption ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
