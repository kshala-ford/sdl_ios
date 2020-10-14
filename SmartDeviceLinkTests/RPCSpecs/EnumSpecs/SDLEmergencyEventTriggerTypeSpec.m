//
//  SDLEmergencyEventTriggerTypeSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 5/6/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLEmergencyEventTriggerType.h"

QuickSpecBegin(SDLEmergencyEventTriggerTypeSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLEmergencyEventTriggerTypeNormal).to(equal(@"NORMAL"));
        expect(SDLEmergencyEventTriggerTypeThresholdExceeded).to(equal(@"THRESHOLD_EXCEEDED"));
        expect(SDLEmergencyEventTriggerTypeThresholdOneExceeded).to(equal(@"THRESHOLD_1_EXCEEDED"));
        expect(SDLEmergencyEventTriggerTypeThresholdTwoExceeded).to(equal(@"THRESHOLD_2_EXCEEDED"));
        expect(SDLEmergencyEventTriggerTypeNotUsed).to(equal(@"NOT_USED"));
        expect(SDLEmergencyEventTriggerTypeInvalid).to(equal(@"INVALID"));
    });
});

QuickSpecEnd

