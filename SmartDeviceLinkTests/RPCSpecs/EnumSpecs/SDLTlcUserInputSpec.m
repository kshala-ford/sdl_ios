//
//  SDLTlcUserInputSpec.m
//  SmartDeviceLinkTests
//
//  Created by Brahmbhatt, Parth (P.) on 9/16/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTrailerCheckUserInput.h"

QuickSpecBegin(SDLTlcUserInputSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTrailerCheckUserInputStartTest).to(equal(@"START_TEST"));
        expect(SDLTrailerCheckUserInputStopTest).to(equal(@"STOP_TEST"));
    });
});

QuickSpecEnd
