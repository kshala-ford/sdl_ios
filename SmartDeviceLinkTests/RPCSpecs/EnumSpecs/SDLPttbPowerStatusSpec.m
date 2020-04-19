//
//  SDLPttbPowerStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLPttbPowerStatus.h"

QuickSpecBegin(SDLPttbPowerStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLPttbPowerStatusNotUsed).to(equal(@"NOT_USED"));
        expect(SDLPttbPowerStatusOff).to(equal(@"OFF"));
        expect(SDLPttbPowerStatusLow).to(equal(@"LOW"));
        expect(SDLPttbPowerStatusHigh).to(equal(@"HIGH"));
    });
});

QuickSpecEnd
