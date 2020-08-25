//
//  SDLScreenModeSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLScreenMode.h"

QuickSpecBegin(SDLScreenModeSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLScreenModeInactive).to(equal(@"INACTIVE"));
        expect(SDLScreenModeObsActive).to(equal(@"OBS_ACTIVE"));
        expect(SDLScreenModeAdmActive).to(equal(@"ADM_ACTIVE"));
        expect(SDLScreenModeWdhActive).to(equal(@"WDH_ACTIVE"));
        expect(SDLScreenModeSmhtActive).to(equal(@"SMHT_ACTIVE"));
        expect(SDLScreenModeGnhActive).to(equal(@"GNH_ACTIVE"));
        expect(SDLScreenModeWcsActive).to(equal(@"WCS_ACTIVE"));
        expect(SDLScreenModeClsActive).to(equal(@"CLS_ACTIVE"));
    });
});

QuickSpecEnd
