//
//  SDLPttbControlCapabilities.m
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLPttbControlCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

@implementation SDLPttbControlCapabilities


- (void)setModuleName:(NSString *)moduleName {
    [self.store sdl_setObject:moduleName forName:SDLRPCParameterNameModuleName];
}

- (NSString *)moduleName {
    NSError *error = nil;
    return [self.store sdl_objectForName:SDLRPCParameterNameModuleName ofClass:NSString.class error:&error];
}

- (void)setStateAvailable:(nullable NSNumber<SDLBool> *)stateAvailable {
    [self.store sdl_setObject:stateAvailable forName:SDLRPCParameterNameStateAvailable];
}

- (nullable NSNumber<SDLBool> *)stateAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameStateAvailable ofClass:NSNumber.class error:nil];
}

- (void)setResetAvailable:(nullable NSNumber<SDLBool> *)resetAvailable {
    [self.store sdl_setObject:resetAvailable forName:SDLRPCParameterNameResetAvailable];
}

- (nullable NSNumber<SDLBool> *)resetAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameResetAvailable ofClass:NSNumber.class error:nil];
}

- (void)setFaltMsgAvailable:(nullable NSNumber<SDLBool> *)faltMsgAvailable {
    [self.store sdl_setObject:faltMsgAvailable forName:SDLRPCParameterNameFaltMsgAvailable];
}

- (nullable NSNumber<SDLBool> *)faltMsgAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameFaltMsgAvailable ofClass:NSNumber.class error:nil];
}

- (void)setEngOnMsgAvailable:(nullable NSNumber<SDLBool> *)engOnMsgAvailable {
    [self.store sdl_setObject:engOnMsgAvailable forName:SDLRPCParameterNameEngineOnMsgAvailable];
}

- (nullable NSNumber<SDLBool> *)engOnMsgAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameEngineOnMsgAvailable ofClass:NSNumber.class error:nil];
}

- (void)setLoFuelMsgAvailable:(nullable NSNumber<SDLBool> *)loFuelMsgAvailable {
    [self.store sdl_setObject:loFuelMsgAvailable forName:SDLRPCParameterNameLowFuelMsgAvailable];
}

- (nullable NSNumber<SDLBool> *)loFuelMsgAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameLowFuelMsgAvailable ofClass:NSNumber.class error:nil];
}

- (void)setPowerStatusAvailable:(nullable NSNumber<SDLBool> *)powerStatusAvailable {
    [self.store sdl_setObject:powerStatusAvailable forName:SDLRPCParameterNamePowerStatusAvailable];
}

- (nullable NSNumber<SDLBool> *)powerStatusAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNamePowerStatusAvailable ofClass:NSNumber.class error:nil];
}

- (void)setOutletAAvailable:(nullable NSNumber<SDLBool> *)outletAAvailable {
    [self.store sdl_setObject:outletAAvailable forName:SDLRPCParameterNameOutletAAvailable];
}

- (nullable NSNumber<SDLBool> *)outletAAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameOutletAAvailable ofClass:NSNumber.class error:nil];
}

- (void)setOutletBAvailable:(nullable NSNumber<SDLBool> *)outletBAvailable {
    [self.store sdl_setObject:outletBAvailable forName:SDLRPCParameterNameOutletBAvailable];
}

- (nullable NSNumber<SDLBool> *)outletBAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameOutletBAvailable ofClass:NSNumber.class error:nil];
}

- (void)setPwMaxAvailable:(nullable NSNumber<SDLBool> *)pwMaxAvailable {
    [self.store sdl_setObject:pwMaxAvailable forName:SDLRPCParameterNamePwMaxAvailable];
}

- (nullable NSNumber<SDLBool> *)pwMaxAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNamePwMaxAvailable ofClass:NSNumber.class error:nil];
}

- (void)setHwConfigAvailable:(nullable NSNumber<SDLBool> *)hwConfigAvailable {
    [self.store sdl_setObject:hwConfigAvailable forName:SDLRPCParameterNameHwConfigAvailable];
}

- (nullable NSNumber<SDLBool> *)hwConfigAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNameHwConfigAvailable ofClass:NSNumber.class error:nil];
}

- (void)setPwConsumptionAvailable:(nullable NSNumber<SDLBool> *)pwConsumptionAvailable {
    [self.store sdl_setObject:pwConsumptionAvailable forName:SDLRPCParameterNamePwConsumptionAvailable];
}

- (nullable NSNumber<SDLBool> *)pwConsumptionAvailable {
    return [self.store sdl_objectForName:SDLRPCParameterNamePwConsumptionAvailable ofClass:NSNumber.class error:nil];
}

@end
