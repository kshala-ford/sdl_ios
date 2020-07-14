//
//  SDLFrontAxleLoadRestorationStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLFrontAxleLoadRestorationStatus.h"

QuickSpecBegin(SDLFrontAxleLoadRestorationStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLFrontAxleLoadRestorationStatusInactive).to(equal(@"INACTIVE"));
        expect(SDLFrontAxleLoadRestorationStatusFirstMeasurementCollected).to(equal(@"FIRST_MEASUREMENT_COLLECTED"));
        expect(SDLFrontAxleLoadRestorationStatusSecondMeasurementCollected).to(equal(@"SECOND_MEASURMENT_COLLECTED"));
        expect(SDLFrontAxleLoadRestorationStatusHeightCorrectionCompleted).to(equal(@"HEIGHT_CORRECTION_COMPLETE"));
        expect(SDLFrontAxleLoadRestorationStatusNotUsed1).to(equal(@"NOT_USED_1"));
        expect(SDLFrontAxleLoadRestorationStatusNotUsed2).to(equal(@"NOT_USED_2"));
        expect(SDLFrontAxleLoadRestorationStatusNotUsed3).to(equal(@"NOT_USED_3"));
        expect(SDLFrontAxleLoadRestorationStatusFaulty).to(equal(@"FAULTY"));
    });
});

QuickSpecEnd
