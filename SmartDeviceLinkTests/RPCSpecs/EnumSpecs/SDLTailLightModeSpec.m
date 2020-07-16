//
//  SDLTailLightModeSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTailLightMode.h"

QuickSpecBegin(SDLTailLightModeSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTailLightModeActiveObs).to(equal(@"ACTIVATE_OBS"));
        expect(SDLTailLightModeActiveSmt).to(equal(@"ACTIVATE_SMT"));
        expect(SDLTailLightModeActiveWdh).to(equal(@"ACTIVATE_WDH"));
        expect(SDLTailLightModeDeactiveAll).to(equal(@"DEACTIVATE_ALL"));
    });
});

QuickSpecEnd
