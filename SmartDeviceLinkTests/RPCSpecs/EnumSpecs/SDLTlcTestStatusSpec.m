//
//  SDLTlcTestStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Brahmbhatt, Parth (P.) on 9/16/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTrailerCheckTestStatus.h"

QuickSpecBegin(SDLTlcTestStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTrailerCheckTestStatusNone).to(equal(@"NONE"));
        expect(SDLTrailerCheckTestStatusTestCompleted).to(equal(@"TEST_COMPLETED"));
        expect(SDLTrailerCheckTestStatusTestEnded).to(equal(@"TEST_ENDED"));
        expect(SDLTrailerCheckTestStatusTestInProgress).to(equal(@"TEST_IN_PROGRESS"));
    });
});

QuickSpecEnd
