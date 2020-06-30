//
//  SDLObsshControlDataSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLRPCParameterNames.h"
#import "SDLObsshControlData.h"

QuickSpecBegin(SDLObsshControlDataSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLObsshControlData *testStruct = [[SDLObsshControlData alloc] init];

        testStruct.screenMode = SDLScreenModeClsActive;
        testStruct.tare = @5;
        testStruct.tailLightMode = SDLTailLightModeActiveObs;
        testStruct.trailerWeight = @25;
        testStruct.frontAxleLoadRestoration = SDLFrontAxleLoadRestorationComplete;
        testStruct.displayUnit = SDLObsshDisplayUnitKg;
        testStruct.passengerWeight = @25;
        testStruct.screenStep = @12;

        expect(testStruct.checkGear).to(beNil());
        expect(testStruct.checkSteeringWheel).to(beNil());
        expect(testStruct.checkFlatSurface).to(beNil());
        expect(testStruct.checkTirePressure).to(beNil());
        expect(testStruct.payload).to(beNil());
        expect(testStruct.payloadPercent).to(beNil());
        expect(testStruct.taredPayload).to(beNil());
        expect(testStruct.trailerTongueLoad).to(beNil());
        expect(testStruct.trailerTongueLoadPercent).to(beNil());
        expect(testStruct.frontAxleLoadRestorationPercent).to(beNil());
        expect(testStruct.factoryCurbWeight).to(beNil());
        expect(testStruct.grossVehicleWeightRating).to(beNil());
        expect(testStruct.frontGrossAxleWeightRating).to(beNil());
        expect(testStruct.rearGrossAxleWeightRating).to(beNil());
        expect(testStruct.maxHitchTrailerWeight).to(beNil());
        expect(testStruct.maxBedTrailerWeight).to(beNil());
        expect(testStruct.frontAxleLoadRestorationUppr).to(beNil());
        expect(testStruct.frontAxleLoadRestorationLwr).to(beNil());
        expect(testStruct.screenModeStatus).to(beNil());
        expect(testStruct.tareStatus).to(beNil());
        expect(testStruct.tailLightModeStatus).to(beNil());
        expect(testStruct.trailerWeightStatus).to(beNil());
        expect(testStruct.frontAxleLoadRestorationStatus).to(beNil());
        expect(testStruct.screenMode).to(equal(SDLScreenModeClsActive));
        expect(testStruct.tare).to(equal(@5));
        expect(testStruct.tailLightMode).to(equal(SDLTailLightModeActiveObs));
        expect(testStruct.trailerWeight).to(equal(@25));
        expect(testStruct.frontAxleLoadRestoration).to(equal(SDLFrontAxleLoadRestorationComplete));
        expect(testStruct.displayUnit).to(equal(SDLObsshDisplayUnitKg));
        expect(testStruct.passengerWeight).to(equal(@25));
        expect(testStruct.screenStep).to(equal(@12));

    });

    it(@"Should set and get correctly", ^ {
        SDLObsshControlData *testStruct = [[SDLObsshControlData alloc] initWithCheckGear:@1 checkSteeringWheel:@0 checkFlatSurface:@1 checkTirePressure:@1 payload:@9 payloadPercent:@9 taredPayload:@9 trailerTongueLoad:@9 trailerTongueLoadPercent:@7 frontAxleLoadRestorationPercent:@9 factoryCurbWeight:@9 grossVehicleWeightRating:@9 frontGrossAxleWeightRating:@9 rearGrossAxleWeightRating:@9 maxHitchTrailerWeight:@9 maxBedTrailerWeight:@9 frontAxleLoadRestorationUppr:@9 frontAxleLoadRestorationLwr:@9 screenModeStatus:SDLScreenModeClsActive tareStatus:SDLTareStatusFaulty tailLightModeStatus:SDLTailLightModeStatusObsActive trailerWeightStatus:@3 frontAxleLoadRestorationStatus:SDLFrontAxleLoadRestorationStatusNotUsed1 screenMode:SDLScreenModeObsActive tare:@0 tailLightMode:SDLTailLightModeActiveObs trailerWeight:@8 frontAxleLoadRestoration:SDLFrontAxleLoadRestorationComplete displayUnit:SDLObsshDisplayUnitKg passengerWeight:@5 screenStep:@4];

        expect(testStruct.checkGear).to(equal(@1));
        expect(testStruct.checkSteeringWheel).to(equal(@0));
        expect(testStruct.checkFlatSurface).to(equal(@1));
        expect(testStruct.checkTirePressure).to(equal(@1));
        expect(testStruct.payload).to(equal(@9));
        expect(testStruct.payloadPercent).to(equal(@9));
        expect(testStruct.taredPayload).to(equal(@9));
        expect(testStruct.trailerTongueLoad).to(equal(@9));
        expect(testStruct.trailerTongueLoadPercent).to(equal(@7));
        expect(testStruct.frontAxleLoadRestorationPercent).to(equal(@9));
        expect(testStruct.factoryCurbWeight).to(equal(@9));
        expect(testStruct.grossVehicleWeightRating).to(equal(@9));
        expect(testStruct.frontGrossAxleWeightRating).to(equal(@9));
        expect(testStruct.rearGrossAxleWeightRating).to(equal(@9));
        expect(testStruct.maxHitchTrailerWeight).to(equal(@9));
        expect(testStruct.maxBedTrailerWeight).to(equal(@9));
        expect(testStruct.frontAxleLoadRestorationUppr).to(equal(@9));
        expect(testStruct.frontAxleLoadRestorationLwr).to(equal(@9));
        expect(testStruct.screenModeStatus).to(equal(SDLScreenModeClsActive));
        expect(testStruct.tareStatus).to(equal(SDLTareStatusFaulty));
        expect(testStruct.tailLightModeStatus).to(equal(SDLTailLightModeStatusObsActive));
        expect(testStruct.trailerWeightStatus).to(equal(@3));
        expect(testStruct.frontAxleLoadRestorationStatus).to(equal(SDLFrontAxleLoadRestorationStatusNotUsed1));
        expect(testStruct.screenMode).to(equal(SDLScreenModeObsActive));
        expect(testStruct.tare).to(equal(@0));
        expect(testStruct.tailLightMode).to(equal(SDLTailLightModeActiveObs));
        expect(testStruct.trailerWeight).to(equal(@8));
        expect(testStruct.frontAxleLoadRestoration).to(equal(SDLFrontAxleLoadRestorationComplete));
        expect(testStruct.displayUnit).to(equal(SDLObsshDisplayUnitKg));
        expect(testStruct.passengerWeight).to(equal(@5));
        expect(testStruct.screenStep).to(equal(@4));

    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLRPCParameterNameCheckGear:@1,
                                       SDLRPCParameterNameCheckSteeringWheel:@0,
                                       SDLRPCParameterNameCheckFlatSurface:@1,
                                       SDLRPCParameterNameCheckTirePressure:@1,
                                       SDLRPCParameterNamePayload:@9,
                                       SDLRPCParameterNamePayloadPercent:@9,
                                       SDLRPCParameterNameTaredPayload:@9,
                                       SDLRPCParameterNameTrailerTongueLoad:@9,
                                       SDLRPCParameterNameTrailerTongueLoadPercent:@7,
                                       SDLRPCParameterNameFrontAxleLoadRestorationPercent:@9,
                                       SDLRPCParameterNameFactoryCurbWeight:@9,
                                       SDLRPCParameterNameGrossVehicleWeightRating:@9,
                                       SDLRPCParameterNameFrontGrossAxleWeightRating:@9,
                                       SDLRPCParameterNameRearGrossAxleWeightRating:@9,
                                       SDLRPCParameterNameMaxHitchTrailerWeight:@9,
                                       SDLRPCParameterNameMaxBedTrailerWeight:@9,
                                       SDLRPCParameterNameFrontAxleLoadRestorationUppr:@9,
                                       SDLRPCParameterNameFrontAxleLoadRestorationLwr:@9,
                                       SDLRPCParameterNameScreenModeStatus:SDLScreenModeClsActive,
                                       SDLRPCParameterNameTareStatus:SDLTareStatusFaulty,
                                       SDLRPCParameterNameTailLightModeStatus:SDLTailLightModeStatusObsActive,
                                       SDLRPCParameterNameTrailerWeightStatus:@3,
                                       SDLRPCParameterNameFrontAxleLoadRestorationStatus:SDLFrontAxleLoadRestorationStatusNotUsed1,
                                       SDLRPCParameterNameScreenMode:SDLScreenModeObsActive,
                                       SDLRPCParameterNameTare:@0,
                                       SDLRPCParameterNameTailLightMode:SDLTailLightModeActiveObs,
                                       SDLRPCParameterNameTrailerWeight:@8,
                                       SDLRPCParameterNameFrontAxleLoadRestoration:SDLFrontAxleLoadRestorationComplete,
                                       SDLRPCParameterNameDisplayUnit:SDLObsshDisplayUnitKg,
                                       SDLRPCParameterNamePassengerWeight:@5,
                                       SDLRPCParameterNameScreenStep:@4,
                                       } mutableCopy];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLObsshControlData *testStruct = [[SDLObsshControlData alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.checkGear).to(equal(@1));
        expect(testStruct.checkSteeringWheel).to(equal(@0));
        expect(testStruct.checkFlatSurface).to(equal(@1));
        expect(testStruct.checkTirePressure).to(equal(@1));
        expect(testStruct.payload).to(equal(@9));
        expect(testStruct.payloadPercent).to(equal(@9));
        expect(testStruct.taredPayload).to(equal(@9));
        expect(testStruct.trailerTongueLoad).to(equal(@9));
        expect(testStruct.trailerTongueLoadPercent).to(equal(@7));
        expect(testStruct.frontAxleLoadRestorationPercent).to(equal(@9));
        expect(testStruct.factoryCurbWeight).to(equal(@9));
        expect(testStruct.grossVehicleWeightRating).to(equal(@9));
        expect(testStruct.frontGrossAxleWeightRating).to(equal(@9));
        expect(testStruct.rearGrossAxleWeightRating).to(equal(@9));
        expect(testStruct.maxHitchTrailerWeight).to(equal(@9));
        expect(testStruct.maxBedTrailerWeight).to(equal(@9));
        expect(testStruct.frontAxleLoadRestorationUppr).to(equal(@9));
        expect(testStruct.frontAxleLoadRestorationLwr).to(equal(@9));
        expect(testStruct.screenModeStatus).to(equal(SDLScreenModeClsActive));
        expect(testStruct.tareStatus).to(equal(SDLTareStatusFaulty));
        expect(testStruct.tailLightModeStatus).to(equal(SDLTailLightModeStatusObsActive));
        expect(testStruct.trailerWeightStatus).to(equal(@3));
        expect(testStruct.frontAxleLoadRestorationStatus).to(equal(SDLFrontAxleLoadRestorationStatusNotUsed1));
        expect(testStruct.screenMode).to(equal(SDLScreenModeObsActive));
        expect(testStruct.tare).to(equal(@0));
        expect(testStruct.tailLightMode).to(equal(SDLTailLightModeActiveObs));
        expect(testStruct.trailerWeight).to(equal(@8));
        expect(testStruct.frontAxleLoadRestoration).to(equal(SDLFrontAxleLoadRestorationComplete));
        expect(testStruct.displayUnit).to(equal(SDLObsshDisplayUnitKg));
        expect(testStruct.passengerWeight).to(equal(@5));
        expect(testStruct.screenStep).to(equal(@4));
    });

    it(@"Should return nil if not set", ^ {
        SDLObsshControlData *testStruct = [[SDLObsshControlData alloc] init];

        expect(testStruct.checkGear).to(beNil());
        expect(testStruct.checkSteeringWheel).to(beNil());
        expect(testStruct.checkFlatSurface).to(beNil());
        expect(testStruct.checkTirePressure).to(beNil());
        expect(testStruct.payload).to(beNil());
        expect(testStruct.payloadPercent).to(beNil());
        expect(testStruct.taredPayload).to(beNil());
        expect(testStruct.trailerTongueLoad).to(beNil());
        expect(testStruct.trailerTongueLoadPercent).to(beNil());
        expect(testStruct.frontAxleLoadRestorationPercent).to(beNil());
        expect(testStruct.factoryCurbWeight).to(beNil());
        expect(testStruct.grossVehicleWeightRating).to(beNil());
        expect(testStruct.frontGrossAxleWeightRating).to(beNil());
        expect(testStruct.rearGrossAxleWeightRating).to(beNil());
        expect(testStruct.maxHitchTrailerWeight).to(beNil());
        expect(testStruct.maxBedTrailerWeight).to(beNil());
        expect(testStruct.frontAxleLoadRestorationUppr).to(beNil());
        expect(testStruct.frontAxleLoadRestorationLwr).to(beNil());
        expect(testStruct.screenModeStatus).to(beNil());
        expect(testStruct.tareStatus).to(beNil());
        expect(testStruct.tailLightModeStatus).to(beNil());
        expect(testStruct.trailerWeightStatus).to(beNil());
        expect(testStruct.frontAxleLoadRestorationStatus).to(beNil());
        expect(testStruct.screenMode).to(beNil());
        expect(testStruct.tare).to(beNil());
        expect(testStruct.tailLightMode).to(beNil());
        expect(testStruct.trailerWeight).to(beNil());
        expect(testStruct.frontAxleLoadRestoration).to(beNil());
        expect(testStruct.displayUnit).to(beNil());
        expect(testStruct.passengerWeight).to(beNil());
        expect(testStruct.screenStep).to(beNil());
    });
});

QuickSpecEnd
