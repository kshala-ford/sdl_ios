//
//  SDLTlcControlDataSpec.m
//  SmartDeviceLinkTests
//
//  Created by Brahmbhatt, Parth (P.) on 9/17/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLRPCParameterNames.h"
#import "SDLTlcControlData.h"

QuickSpecBegin(SDLTlcControlDataSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLTlcControlData *testStruct = [[SDLTlcControlData alloc] init];

        testStruct.userInput = SDLTrailerCheckUserInputStartTest;
        testStruct.preconditionStatus = SDLTrailerCheckPreconditionStatusNotStationary;
        testStruct.testStatus = SDLTrailerCheckTestStatusTestCompleted;

        expect(testStruct.userInput).to(equal(SDLTrailerCheckUserInputStartTest));
        expect(testStruct.preconditionStatus).to(equal(SDLTrailerCheckPreconditionStatusNotStationary));
        expect(testStruct.testStatus).to(equal(SDLTrailerCheckTestStatusTestCompleted));
    });

    it(@"Should set and get correctly", ^ {
        SDLTlcControlData *testStruct = [[SDLTlcControlData alloc] initWithUserInput:SDLTrailerCheckUserInputStartTest preconditionStatus:SDLTrailerCheckPreconditionStatusNotStationary testStatus:SDLTrailerCheckTestStatusTestCompleted];

        expect(testStruct.userInput).to(equal(SDLTrailerCheckUserInputStartTest));
        expect(testStruct.preconditionStatus).to(equal(SDLTrailerCheckPreconditionStatusNotStationary));
        expect(testStruct.testStatus).to(equal(SDLTrailerCheckTestStatusTestCompleted));
    });

    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLRPCParameterNameUserInput:SDLTrailerCheckUserInputStartTest,
                                       SDLRPCParameterNamePreconditionStatus:SDLTrailerCheckPreconditionStatusNotStationary,
                                       SDLRPCParameterNameTestStatus:SDLTrailerCheckTestStatusTestCompleted,
                                       } mutableCopy];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        SDLTlcControlData *testStruct = [[SDLTlcControlData alloc] initWithDictionary:dict];
#pragma clang diagnostic pop

        expect(testStruct.userInput).to(equal(SDLTrailerCheckUserInputStartTest));
        expect(testStruct.preconditionStatus).to(equal(SDLTrailerCheckPreconditionStatusNotStationary));
        expect(testStruct.testStatus).to(equal(SDLTrailerCheckTestStatusTestCompleted));
    });

    it(@"Should return nil if not set", ^ {
        SDLTlcControlData *testStruct = [[SDLTlcControlData alloc] init];

        expect(testStruct.userInput).to(beNil());
        expect(testStruct.preconditionStatus).to(beNil());
        expect(testStruct.testStatus).to(beNil());
    });
});

QuickSpecEnd

