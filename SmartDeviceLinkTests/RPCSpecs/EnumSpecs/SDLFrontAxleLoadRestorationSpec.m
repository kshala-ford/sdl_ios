//
//  SDLFrontAxleLoadRestorationSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLFrontAxleLoadRestoration.h"

QuickSpecBegin(SDLFrontAxleLoadRestorationSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLFrontAxleLoadRestorationExit).to(equal(@"EXIT"));
        expect(SDLFrontAxleLoadRestorationRequestFirstMeasurement).to(equal(@"REQUEST_FIRST_MEASUREMENT"));
        expect(SDLFrontAxleLoadRestorationRequestSecondMeasurement).to(equal(@"REQUEST_SECOND_MEASUREMENT"));
        expect(SDLFrontAxleLoadRestorationComplete).to(equal(@"COMPLETE"));
    });
});

QuickSpecEnd
