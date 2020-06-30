//
//  SDLPttbControlCapabilitiesSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLRPCParameterNames.h"
#import "SDLPttbControlCapabilities.h"


QuickSpecBegin(SDLPttbControlCapabilitiesSpec)

describe(@"Getter/Setter Tests", ^ {

    it(@"Should set and get correctly", ^ {
        SDLPttbControlCapabilities *testStruct = [[SDLPttbControlCapabilities alloc] init];

        testStruct.moduleName = @"moduleName";
        testStruct.stateAvailable = @NO;
        testStruct.resetAvailable = @YES;
        testStruct.faltMsgAvailable = @NO;
        testStruct.engOnMsgAvailable = @YES;
        testStruct.loFuelMsgAvailable = @NO;
        testStruct.powerStatusAvailable = @NO;
        testStruct.outletAAvailable = @NO;
        testStruct.outletBAvailable = @NO;
        testStruct.pwMaxAvailable = @NO;
        testStruct.hwConfigAvailable = @YES;
        testStruct.pwConsumptionAvailable = @NO;

        expect(testStruct.moduleName).to(equal(@"moduleName"));
        expect(testStruct.stateAvailable).to(equal(@NO));
        expect(testStruct.resetAvailable).to(equal(@YES));
        expect(testStruct.faltMsgAvailable).to(equal(@NO));
        expect(testStruct.engOnMsgAvailable).to(equal(@YES));
        expect(testStruct.loFuelMsgAvailable).to(equal(@NO));
        expect(testStruct.powerStatusAvailable).to(equal(@NO));
        expect(testStruct.outletAAvailable).to(equal(@NO));
        expect(testStruct.outletBAvailable).to(equal(@NO));
        expect(testStruct.pwMaxAvailable).to(equal(@NO));
        expect(testStruct.hwConfigAvailable).to(equal(@YES));
        expect(testStruct.pwConsumptionAvailable).to(equal(@NO));
    });

    it(@"Should set and get correctly", ^ {
        SDLPttbControlCapabilities *testStruct = [[SDLPttbControlCapabilities alloc] initWithModuleName:@"" stateAvailable:YES resetAvailable:NO faltMsgAvailable:NO engOnMsgAvailable:YES loFuelMsgAvailable:NO powerStatusAvailable:YES outletAAvailable:NO outletBAvailable:YES pwMaxAvailable:NO hwConfigAvailable:NO pwConsumptionAvailable:YES];

        expect(testStruct.moduleName).to(equal(@""));
        expect(testStruct.stateAvailable).to(equal(@YES));
        expect(testStruct.resetAvailable).to(equal(@NO));
        expect(testStruct.faltMsgAvailable).to(equal(@NO));
        expect(testStruct.engOnMsgAvailable).to(equal(@YES));
        expect(testStruct.loFuelMsgAvailable).to(equal(@NO));
        expect(testStruct.powerStatusAvailable).to(equal(@YES));
        expect(testStruct.outletAAvailable).to(equal(@NO));
        expect(testStruct.outletBAvailable).to(equal(@YES));
        expect(testStruct.pwMaxAvailable).to(equal(@NO));
        expect(testStruct.hwConfigAvailable).to(equal(@NO));
        expect(testStruct.pwConsumptionAvailable).to(equal(@YES));
    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLRPCParameterNameModuleName:@"moduleName",
                                       SDLRPCParameterNameStateAvailable:(@YES),
                                       SDLRPCParameterNameResetAvailable:@YES,
                                       SDLRPCParameterNameFaltMsgAvailable:@YES,
                                       SDLRPCParameterNameEngineOnMsgAvailable:@NO,
                                       SDLRPCParameterNameLowFuelMsgAvailable:@NO,
                                       SDLRPCParameterNamePowerStatusAvailable:@NO,
                                       SDLRPCParameterNameOutletAAvailable:@NO,
                                       SDLRPCParameterNameOutletBAvailable:@NO,
                                       SDLRPCParameterNamePwMaxAvailable:@YES,
                                       SDLRPCParameterNameHwConfigAvailable:@NO,
                                       SDLRPCParameterNamePwConsumptionAvailable:@YES,
                                       } mutableCopy];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLPttbControlCapabilities *testStruct = [[SDLPttbControlCapabilities alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.moduleName).to(equal(@"moduleName"));
        expect(testStruct.stateAvailable).to(equal(@YES));
        expect(testStruct.resetAvailable).to(equal(@YES));
        expect(testStruct.faltMsgAvailable).to(equal(@YES));
        expect(testStruct.engOnMsgAvailable).to(equal(@NO));
        expect(testStruct.loFuelMsgAvailable).to(equal(@NO));
        expect(testStruct.powerStatusAvailable).to(equal(@NO));
        expect(testStruct.outletAAvailable).to(equal(@NO));
        expect(testStruct.outletBAvailable).to(equal(@NO));
        expect(testStruct.pwMaxAvailable).to(equal(@YES));
        expect(testStruct.hwConfigAvailable).to(equal(@NO));
        expect(testStruct.pwConsumptionAvailable).to(equal(@YES));
    });

    it(@"Should return nil if not set", ^ {
        SDLPttbControlCapabilities *testStruct = [[SDLPttbControlCapabilities alloc] init];

        expect(testStruct.moduleName).to(beNil());
        expect(testStruct.stateAvailable).to(beNil());
        expect(testStruct.resetAvailable).to(beNil());
        expect(testStruct.faltMsgAvailable).to(beNil());
        expect(testStruct.engOnMsgAvailable).to(beNil());
        expect(testStruct.loFuelMsgAvailable).to(beNil());
        expect(testStruct.powerStatusAvailable).to(beNil());
        expect(testStruct.outletAAvailable).to(beNil());
        expect(testStruct.outletBAvailable).to(beNil());
        expect(testStruct.pwMaxAvailable).to(beNil());
        expect(testStruct.hwConfigAvailable).to(beNil());
        expect(testStruct.pwConsumptionAvailable).to(beNil());
    });
});

QuickSpecEnd

