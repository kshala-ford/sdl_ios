//
//  SDLTlcPreconditionStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Brahmbhatt, Parth (P.) on 9/16/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTrailerCheckPreconditionStatus.h"

QuickSpecBegin(SDLTlcPreconditionStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTrailerCheckPreconditionStatusNone).to(equal(@"NONE"));
        expect(SDLTrailerCheckPreconditionStatusIgnitionNotOn).to(equal(@"IGNITION_NOT_ON"));
        expect(SDLTrailerCheckPreconditionStatusTailLightsOn).to(equal(@"TAILLIGHTS_ON"));
        expect(SDLTrailerCheckPreconditionStatusBatterySocLow).to(equal(@"BATTERY_SOC_LOW"));
        expect(SDLTrailerCheckPreconditionStatusPreconditionsPassed).to(equal(@"PRECONDITIONS_PASSED"));
        expect(SDLTrailerCheckPreconditionStatusInteractionPresent).to(equal(@"INTERACTION_PRESENT"));
        expect(SDLTrailerCheckPreconditionStatusNotStationary).to(equal(@"NOT_STATIONARY"));
        expect(SDLTrailerCheckPreconditionStatusError).to(equal(@"ERROR"));
    });
});

QuickSpecEnd
