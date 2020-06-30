//
//  SDLPttbPowerStateSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLPttbPowerState.h"

QuickSpecBegin(SDLPttbPowerStateSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLPttbPowerStateNotUsed).to(equal(@"NOT_USED"));
        expect(SDLPttbPowerStateOff).to(equal(@"OFF"));
        expect(SDLPttbPowerStateLow).to(equal(@"LOW"));
        expect(SDLPttbPowerStateHigh).to(equal(@"HIGH"));
    });
});

QuickSpecEnd

