//
//  SDLEmergencyEventTriggerSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 5/6/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLRPCParameterNames.h"
#import "SDLEmergencyEventTrigger.h"

QuickSpecBegin(SDLEmergencyEventTriggerSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLEmergencyEventTrigger *testStruct = [[SDLEmergencyEventTrigger alloc] init];

        testStruct.edrEventTriggerStatus = SDLEmergencyEventTriggerTypeThresholdExceeded;
        testStruct.restrainImpactStatus = SDLEmergencyEventTriggerTypeNotUsed;

        expect(testStruct.edrEventTriggerStatus).to(equal(SDLEmergencyEventTriggerTypeThresholdExceeded));
        expect(testStruct.restrainImpactStatus).to(equal(SDLEmergencyEventTriggerTypeNotUsed));
    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary *dict = [@{SDLRPCParameterNameEdrEventTriggerStatus:SDLEmergencyEventTriggerTypeThresholdExceeded,
                                       SDLRPCParameterNameRestrainImpactStatus:SDLEmergencyEventTriggerTypeNotUsed} mutableCopy];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLEmergencyEventTrigger *testStruct = [[SDLEmergencyEventTrigger alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.edrEventTriggerStatus).to(equal(SDLEmergencyEventTriggerTypeThresholdExceeded));
        expect(testStruct.restrainImpactStatus).to(equal(SDLEmergencyEventTriggerTypeNotUsed));
    });

    it(@"Should return nil if not set", ^ {
        SDLEmergencyEventTrigger *testStruct = [[SDLEmergencyEventTrigger alloc] init];

        expect(testStruct.edrEventTriggerStatus).to(beNil());
        expect(testStruct.restrainImpactStatus).to(beNil());
    });
});

QuickSpecEnd
