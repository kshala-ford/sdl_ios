//
//  SDLPttbFaltMsgSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLPttbFaltMsg.h"

QuickSpecBegin(SDLPttbFaltMsgSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLPttbFaltMsgOk).to(equal(@"OK"));
        expect(SDLPttbFaltMsgOverCurrent).to(equal(@"OVER_CURRENT"));
        expect(SDLPttbFaltMsgGFCI).to(equal(@"GFCI"));
        expect(SDLPttbFaltMsgTemperature).to(equal(@"TEMPERATURE"));
        expect(SDLPttbFaltMsgACOnOutput).to(equal(@"AC_ON_OUTPUT"));
        expect(SDLPttbFaltMsgFuelLow).to(equal(@"FUEL_LOW"));
        expect(SDLPttbFaltMsgBreakerA).to(equal(@"BREAKER_A"));
        expect(SDLPttbFaltMsgBreakerB).to(equal(@"BREAKER_B"));
        expect(SDLPttbFaltMsgBreakerC).to(equal(@"BREAKER_C"));
        expect(SDLPttbFaltMsgPlugWarnDrive).to(equal(@"PLUG_WARN_DRIVE"));
        expect(SDLPttbFaltMsgPlugWarn).to(equal(@"PLUG_WARN"));
        expect(SDLPttbFaltMsgNotAvailable).to(equal(@"NOT_AVAILABLE"));
        expect(SDLPttbFaltMsgService).to(equal(@"SERVICE"));
        expect(SDLPttbFaltMsgEngineRun).to(equal(@"ENGINE_RUN"));
        expect(SDLPttbFaltMsgOverCurrentLP).to(equal(@"OVER_CURRENT_LP"));
        expect(SDLPttbFaltMsgHVACOn).to(equal(@"HVAC_ON"));
        expect(SDLPttbFaltMsgHEVDerate).to(equal(@"HEV_DERATE"));
    });
});

QuickSpecEnd
