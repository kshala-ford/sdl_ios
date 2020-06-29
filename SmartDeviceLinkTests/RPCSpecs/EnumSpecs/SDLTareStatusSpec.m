//
//  SDLTareStatusSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLTareStatus.h"

QuickSpecBegin(SDLTareStatusSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLTareStatusNoRequest).to(equal(@"NOREQUEST"));
        expect(SDLTareStatusRequest).to(equal(@"REQUEST"));
        expect(SDLTareStatusNotUsed).to(equal(@"NOT_USED"));
        expect(SDLTareStatusFaulty).to(equal(@"FAULTY"));
    });
});

QuickSpecEnd
