//
//  SDLPttbControlDataSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLRPCParameterNames.h"
#import "SDLPttbControlData.h"

QuickSpecBegin(SDLPttbControlDataSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLPttbControlData *testStruct = [[SDLPttbControlData alloc] init];

        testStruct.state = SDLPttbPowerStateOff;
        testStruct.reset = @YES;

        expect(testStruct.state).to(equal(SDLPttbPowerStateOff));
        expect(testStruct.reset).to(equal(@YES));
    });

    it(@"Should set and get correctly", ^ {
    SDLPttbControlData *testStruct = [[SDLPttbControlData alloc] initWithState:SDLPttbPowerStateOff reset:@NO faltMsg:SDLPttbFaltMsgOk engOnMsg:SDLPttbEngOnMsgDisplayQuestion loFuelMsg:@30 powerStatus:SDLPttbPowerStatusOff outletA:@8191 outletB:@8191 pwMax:@1023 hwConfig:SDLPttbHwConfig20 pwConsumption:@65535];

        expect(testStruct.state).to(equal(SDLPttbPowerStateOff));
        expect(testStruct.reset).to(equal(@NO));
        expect(testStruct.faltMsg).to(equal(SDLPttbFaltMsgOk));
        expect(testStruct.engOnMsg).to(equal(SDLPttbEngOnMsgDisplayQuestion));
        expect(testStruct.loFuelMsg).to(equal(@30));
        expect(testStruct.powerStatus).to(equal(SDLPttbPowerStatusOff));
        expect(testStruct.outletA).to(equal(@8191));
        expect(testStruct.outletB).to(equal(@8191));
        expect(testStruct.pwMax).to(equal(@1023));
        expect(testStruct.hwConfig).to(equal(SDLPttbHwConfig20));
        expect(testStruct.pwConsumption).to(equal(65535));
    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary *dict = [@{SDLRPCParameterNameState:SDLPttbPowerStateLow,
                                       SDLRPCParameterNameReset:@YES,
                                       SDLRPCParameterNameFaltMsg:SDLPttbFaltMsgService,
                                       SDLRPCParameterNameEngineOnMsg:SDLPttbEngOnMsgDisplayQuestion,
                                       SDLRPCParameterNameLowFuelMsg:@1,
                                       SDLRPCParameterNamePowerStatus:SDLPttbPowerStatusNotUsed,
                                       SDLRPCParameterNameOutletA:@0,
                                       SDLRPCParameterNameOutletB:@0,
                                       SDLRPCParameterNamePwMax:@0,
                                       SDLRPCParameterNameHwConfig:SDLPttbHwConfig20,
                                       SDLRPCParameterNamePwConsumption:@0,
                                       } mutableCopy];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLPttbControlData *testStruct = [[SDLPttbControlData alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.state).to(equal(SDLPttbPowerStateLow));
        expect(testStruct.reset).to(equal(@YES));
        expect(testStruct.faltMsg).to(equal(SDLPttbFaltMsgService));
        expect(testStruct.engOnMsg).to(equal(SDLPttbEngOnMsgDisplayQuestion));
        expect(testStruct.loFuelMsg).to(equal(@1));
        expect(testStruct.powerStatus).to(equal(SDLPttbPowerStatusNotUsed));
        expect(testStruct.outletA).to(equal(@0));
        expect(testStruct.outletB).to(equal(@0));
        expect(testStruct.pwMax).to(equal(@0));
        expect(testStruct.hwConfig).to(equal(SDLPttbHwConfig20));
        expect(testStruct.pwConsumption).to(equal(0));
    });

    it(@"Should return nil if not set", ^ {
        SDLPttbControlData *testStruct = [[SDLPttbControlData alloc] init];

        expect(testStruct.state).to(beNil());
        expect(testStruct.reset).to(beNil());
        expect(testStruct.faltMsg).to(beNil());
        expect(testStruct.engOnMsg).to(beNil());
        expect(testStruct.loFuelMsg).to(beNil());
        expect(testStruct.powerStatus).to(beNil());
        expect(testStruct.outletA).to(beNil());
        expect(testStruct.outletB).to(beNil());
        expect(testStruct.pwMax).to(beNil());
        expect(testStruct.hwConfig).to(beNil());
        expect(testStruct.pwConsumption).to(beNil());
    });
});

QuickSpecEnd
