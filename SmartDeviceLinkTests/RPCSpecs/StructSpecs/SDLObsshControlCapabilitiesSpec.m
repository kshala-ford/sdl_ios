//
//  SDLObsshControlCapabilitiesSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/13/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>
#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLObsshControlCapabilities.h"
#import "SDLRPCParameterNames.h"

QuickSpecBegin(SDLObsshControlCapabilitiesSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLObsshControlCapabilities *testStruct = [[SDLObsshControlCapabilities alloc] init];

        testStruct.moduleName = @"name";
        testStruct.checkGearAvailable = @NO;
        testStruct.checkSteeringWheelAvailable = @NO;
        testStruct.checkFlatSurfaceAvailable = @NO;
        testStruct.checkTirePressureAvailable = @NO;
        testStruct.payloadAvailable = @YES;
        testStruct.payloadPercentAvailable = @YES;
        testStruct.taredPayloadAvailable = @YES;
        testStruct.trailerTongueLoadAvailable = @YES;
        testStruct.trailerTongueLoadPercentAvailable = @YES;
        testStruct.frontAxleLoadRestorationPercentAvailable = @YES;
        testStruct.factoryCurbWeightAvailable = @YES;
        testStruct.grossVehicleWeightRatingAvailable = @YES;
        testStruct.frontGrossAxleWeightRatingAvailable = @YES;
        testStruct.rearGrossAxleWeightRatingAvailable = @YES;
        testStruct.maxHitchTrailerWeightAvailable = @NO;
        testStruct.maxBedTrailerWeightAvailable = @YES;
        testStruct.frontAxleLoadRestorationUpprAvailable = @NO;
        testStruct.frontAxleLoadRestorationLwrAvailable = @YES;
        testStruct.screenModeStatusAvailable = @NO;
        testStruct.tareStatusAvailable = @YES;
        testStruct.tailLightModeStatusAvailable = @NO;
        testStruct.trailerWeightStatusAvailable = @YES;
        testStruct.frontAxleLoadRestorationStatusAvailable = @NO;
        testStruct.screenModeAvailable = @YES;
        testStruct.tareAvailable = @NO;
        testStruct.tailLightModeAvailable = @YES;
        testStruct.trailerWeightAvailable = @NO;
        testStruct.frontAxleLoadRestorationAvailable = @YES;
        testStruct.displayUnitAvailable = @NO;
        testStruct.passengerWeightAvailable = @YES;
        testStruct.screenStepAvailable = @NO;

        expect(testStruct.moduleName).to(equal(@"name"));
        expect(testStruct.checkGearAvailable).to(equal(@NO));
        expect(testStruct.checkSteeringWheelAvailable).to(equal(@NO));
        expect(testStruct.checkFlatSurfaceAvailable).to(equal(@NO));
        expect(testStruct.checkTirePressureAvailable).to(equal(@NO));
        expect(testStruct.payloadAvailable).to(equal(@YES));
        expect(testStruct.payloadPercentAvailable).to(equal(@YES));
        expect(testStruct.taredPayloadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadPercentAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationPercentAvailable).to(equal(@YES));
        expect(testStruct.factoryCurbWeightAvailable).to(equal(@YES));
        expect(testStruct.grossVehicleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.frontGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.rearGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.maxHitchTrailerWeightAvailable).to(equal(@NO));
        expect(testStruct.maxBedTrailerWeightAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationUpprAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationLwrAvailable).to(equal(@YES));
        expect(testStruct.screenModeStatusAvailable).to(equal(@NO));
        expect(testStruct.tareStatusAvailable).to(equal(@YES));
        expect(testStruct.tailLightModeStatusAvailable).to(equal(@NO));
        expect(testStruct.trailerWeightStatusAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationStatusAvailable).to(equal(@NO));
        expect(testStruct.screenModeAvailable).to(equal(@YES));
        expect(testStruct.tareAvailable).to(equal(@NO));
        expect(testStruct.tailLightModeAvailable).to(equal(@YES));
        expect(testStruct.trailerWeightAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationAvailable).to(equal(@YES));
        expect(testStruct.displayUnitAvailable).to(equal(@NO));
        expect(testStruct.passengerWeightAvailable).to(equal(@YES));
        expect(testStruct.screenStepAvailable).to(equal(@NO));
    });

    it(@"Should set and get correctly", ^ {
    SDLObsshControlCapabilities *testStruct = [[SDLObsshControlCapabilities alloc] initWithModuleName:@"name" checkGearAvailable:@NO checkSteeringWheelAvailable:@NO checkFlatSurfaceAvailable:@NO checkTirePressureAvailable:@NO payloadAvailable:@YES payloadPercentAvailable:@YES taredPayloadAvailable:@YES trailerTongueLoadAvailable:@YES trailerTongueLoadPercentAvailable:@YES frontAxleLoadRestorationPercentAvailable:@YES factoryCurbWeightAvailable:@YES grossVehicleWeightRatingAvailable:@YES frontGrossAxleWeightRatingAvailable:@YES rearGrossAxleWeightRatingAvailable:@YES maxHitchTrailerWeightAvailable:@NO maxBedTrailerWeightAvailable:@YES frontAxleLoadRestorationUpprAvailable:@NO frontAxleLoadRestorationLwrAvailable:@YES screenModeStatusAvailable:@NO tareStatusAvailable:@YES tailLightModeStatusAvailable:@NO trailerWeightStatusAvailable:@YES frontAxleLoadRestorationStatusAvailable:@NO screenModeAvailable:@YES tareAvailable:@NO tailLightModeAvailable:@YES trailerWeightAvailable:@NO frontAxleLoadRestorationAvailable:@YES displayUnitAvailable:@NO passengerWeightAvailable:@YES screenStepAvailable:@NO];

        expect(testStruct.moduleName).to(equal(@"name"));
        expect(testStruct.checkGearAvailable).to(equal(@NO));
        expect(testStruct.checkSteeringWheelAvailable).to(equal(@NO));
        expect(testStruct.checkFlatSurfaceAvailable).to(equal(@NO));
        expect(testStruct.checkTirePressureAvailable).to(equal(@NO));
        expect(testStruct.payloadAvailable).to(equal(@YES));
        expect(testStruct.payloadPercentAvailable).to(equal(@YES));
        expect(testStruct.taredPayloadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadPercentAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationPercentAvailable).to(equal(@YES));
        expect(testStruct.factoryCurbWeightAvailable).to(equal(@YES));
        expect(testStruct.grossVehicleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.frontGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.rearGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.maxHitchTrailerWeightAvailable).to(equal(@NO));
        expect(testStruct.maxBedTrailerWeightAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationUpprAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationLwrAvailable).to(equal(@YES));
        expect(testStruct.screenModeStatusAvailable).to(equal(@NO));
        expect(testStruct.tareStatusAvailable).to(equal(@YES));
        expect(testStruct.tailLightModeStatusAvailable).to(equal(@NO));
        expect(testStruct.trailerWeightStatusAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationStatusAvailable).to(equal(@NO));
        expect(testStruct.screenModeAvailable).to(equal(@YES));
        expect(testStruct.tareAvailable).to(equal(@NO));
        expect(testStruct.tailLightModeAvailable).to(equal(@YES));
        expect(testStruct.trailerWeightAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationAvailable).to(equal(@YES));
        expect(testStruct.displayUnitAvailable).to(equal(@NO));
        expect(testStruct.passengerWeightAvailable).to(equal(@YES));
        expect(testStruct.screenStepAvailable).to(equal(@NO));
    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLRPCParameterNameModuleName:@"name",
                                       SDLRPCParameterNameCheckGearAvailable:@NO,
                                       SDLRPCParameterNameCheckSteeringWheelAvailable:@0,
                                       SDLRPCParameterNameCheckFlatSurfaceAvailable:@NO,
                                       SDLRPCParameterNameCheckTirePressureAvailable:@NO,
                                       SDLRPCParameterNamePayloadAvailable:@YES,
                                       SDLRPCParameterNamePayloadPercentAvailable:@YES,
                                       SDLRPCParameterNameTaredPayloadAvailable:@YES,
                                       SDLRPCParameterNameTrailerTongueLoadAvailable:@YES,
                                       SDLRPCParameterNameTrailerTongueLoadPercentAvailable:@YES,
                                       SDLRPCParameterNameFrontAxleLoadRestorationPercentAvailable:@YES,
                                       SDLRPCParameterNameFactoryCurbWeightAvailable:@YES,
                                       SDLRPCParameterNameGrossVehicleWeightRatingAvailable:@YES,
                                       SDLRPCParameterNameFrontGrossAxleWeightRatingAvailable:@YES,
                                       SDLRPCParameterNameRearGrossAxleWeightRatingAvailable:@YES,
                                       SDLRPCParameterNameMaxHitchTrailerWeightAvailable:@NO,
                                       SDLRPCParameterNameMaxBedTrailerWeightAvailable:@YES,
                                       SDLRPCParameterNameFrontAxleLoadRestorationUpprAvailable:@NO,
                                       SDLRPCParameterNameFrontAxleLoadRestorationLwrAvailable:@YES,
                                       SDLRPCParameterNameScreenModeStatusAvailable:@NO,
                                       SDLRPCParameterNameTareStatusAvailable:@YES,
                                       SDLRPCParameterNameTailLightModeStatusAvailable:@NO,
                                       SDLRPCParameterNameTrailerWeightStatusAvailable:@YES,
                                       SDLRPCParameterNameFrontAxleLoadRestorationStatusAvailable:@NO,
                                       SDLRPCParameterNameScreenModeAvailable:@YES,
                                       SDLRPCParameterNameTareAvailable:@NO,
                                       SDLRPCParameterNameTailLightModeAvailable:@YES,
                                       SDLRPCParameterNameTrailerWeightAvailable:@NO,
                                       SDLRPCParameterNameFrontAxleLoadRestorationAvailable:@YES,
                                       SDLRPCParameterNameDisplayUnitAvailable:@NO,
                                       SDLRPCParameterNamePassengerWeightAvailable:@YES,
                                       SDLRPCParameterNameScreenStepAvailable:@NO,
                                       } mutableCopy];

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLObsshControlCapabilities *testStruct = [[SDLObsshControlCapabilities alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.moduleName).to(equal(@"name"));
        expect(testStruct.checkGearAvailable).to(equal(@NO));
        expect(testStruct.checkSteeringWheelAvailable).to(equal(@NO));
        expect(testStruct.checkFlatSurfaceAvailable).to(equal(@NO));
        expect(testStruct.checkTirePressureAvailable).to(equal(@NO));
        expect(testStruct.payloadAvailable).to(equal(@YES));
        expect(testStruct.payloadPercentAvailable).to(equal(@YES));
        expect(testStruct.taredPayloadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadAvailable).to(equal(@YES));
        expect(testStruct.trailerTongueLoadPercentAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationPercentAvailable).to(equal(@YES));
        expect(testStruct.factoryCurbWeightAvailable).to(equal(@YES));
        expect(testStruct.grossVehicleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.frontGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.rearGrossAxleWeightRatingAvailable).to(equal(@YES));
        expect(testStruct.maxHitchTrailerWeightAvailable).to(equal(@NO));
        expect(testStruct.maxBedTrailerWeightAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationUpprAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationLwrAvailable).to(equal(@YES));
        expect(testStruct.screenModeStatusAvailable).to(equal(@NO));
        expect(testStruct.tareStatusAvailable).to(equal(@YES));
        expect(testStruct.tailLightModeStatusAvailable).to(equal(@NO));
        expect(testStruct.trailerWeightStatusAvailable).to(equal(@YES));
        expect(testStruct.frontAxleLoadRestorationStatusAvailable).to(equal(@NO));
        expect(testStruct.screenModeAvailable).to(equal(@YES));
        expect(testStruct.tareAvailable).to(equal(@NO));
        expect(testStruct.tailLightModeAvailable).to(equal(@YES));
        expect(testStruct.trailerWeightAvailable).to(equal(@NO));
        expect(testStruct.frontAxleLoadRestorationAvailable).to(equal(@YES));
        expect(testStruct.displayUnitAvailable).to(equal(@NO));
        expect(testStruct.passengerWeightAvailable).to(equal(@YES));
        expect(testStruct.screenStepAvailable).to(equal(@NO));
    });

    it(@"Should return nil if not set", ^ {
        SDLObsshControlCapabilities *testStruct = [[SDLObsshControlCapabilities alloc] init];

        expect(testStruct.checkGearAvailable).to(beNil());
        expect(testStruct.checkSteeringWheelAvailable).to(beNil());
        expect(testStruct.checkFlatSurfaceAvailable).to(beNil());
        expect(testStruct.checkTirePressureAvailable).to(beNil());
        expect(testStruct.payloadAvailable).to(beNil());
        expect(testStruct.payloadPercentAvailable).to(beNil());
        expect(testStruct.taredPayloadAvailable).to(beNil());
        expect(testStruct.trailerTongueLoadAvailable).to(beNil());
        expect(testStruct.trailerTongueLoadPercentAvailable).to(beNil());
        expect(testStruct.frontAxleLoadRestorationPercentAvailable).to(beNil());
        expect(testStruct.factoryCurbWeightAvailable).to(beNil());
        expect(testStruct.grossVehicleWeightRatingAvailable).to(beNil());
        expect(testStruct.frontGrossAxleWeightRatingAvailable).to(beNil());
        expect(testStruct.rearGrossAxleWeightRatingAvailable).to(beNil());
        expect(testStruct.maxHitchTrailerWeightAvailable).to(beNil());
        expect(testStruct.maxBedTrailerWeightAvailable).to(beNil());
        expect(testStruct.frontAxleLoadRestorationUpprAvailable).to(beNil());
        expect(testStruct.frontAxleLoadRestorationLwrAvailable).to(beNil());
        expect(testStruct.screenModeStatusAvailable).to(beNil());
        expect(testStruct.tareStatusAvailable).to(beNil());
        expect(testStruct.tailLightModeStatusAvailable).to(beNil());
        expect(testStruct.trailerWeightStatusAvailable).to(beNil());
        expect(testStruct.frontAxleLoadRestorationStatusAvailable).to(beNil());
        expect(testStruct.screenModeAvailable).to(beNil());
        expect(testStruct.tareAvailable).to(beNil());
        expect(testStruct.tailLightModeAvailable).to(beNil());
        expect(testStruct.trailerWeightAvailable).to(beNil());
        expect(testStruct.frontAxleLoadRestorationAvailable).to(beNil());
        expect(testStruct.displayUnitAvailable).to(beNil());
        expect(testStruct.passengerWeightAvailable).to(beNil());
        expect(testStruct.screenStepAvailable).to(beNil());
    });
});

QuickSpecEnd
