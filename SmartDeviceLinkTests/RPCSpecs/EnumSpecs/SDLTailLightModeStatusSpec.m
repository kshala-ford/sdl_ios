//
//  SDLTailLightModeStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTailLightModeStatus.h"

QuickSpecBegin(SDLTailLightModeStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTailLightModeStatusInactive).to(equal(@"INACTIVE"));
        expect(SDLTailLightModeStatusObsActive).to(equal(@"OBS_ACTIVE"));
        expect(SDLTailLightModeStatusSmtActive).to(equal(@"SMT_ACTIVE"));
        expect(SDLTailLightModeStatusWdhActive).to(equal(@"WDH_ACTIVE"));
        expect(SDLTailLightModeStatusTailLightOverride).to(equal(@"TAIL_LIGHT_OVERRIDE"));
        expect(SDLTailLightModeStatusNotUsed1).to(equal(@"NOT_USED_1"));
        expect(SDLTailLightModeStatusNotUsed2).to(equal(@"NOT_USED_2"));
        expect(SDLTailLightModeStatusFaulty).to(equal(@"FAULTY"));
    });
});

QuickSpecEnd
