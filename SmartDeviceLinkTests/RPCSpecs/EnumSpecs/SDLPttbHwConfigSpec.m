//
//  SDLPttbHwConfigSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLPttbHwConfig.h"

QuickSpecBegin(SDLPttbHwConfigSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLPttbHwConfigNone).to(equal(@"NO_PTTB_HARDWARE"));
        expect(SDLPttbHwConfig20).to(equal(@"PTTB_2_0KW"));
        expect(SDLPttbHwConfig24).to(equal(@"PTTB_2_4KW"));
        expect(SDLPttbHwConfig72).to(equal(@"PTTB_7_2KW"));
        expect(SDLPttbHwConfig23).to(equal(@"PTTB_2_3KW"));
    });
});

QuickSpecEnd

