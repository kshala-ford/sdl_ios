//
//  SDLObsshDisplayUnitSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 6/12/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLObsshDisplayUnit.h"

QuickSpecBegin(SDLObsshDisplayUnitSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLObsshDisplayUnitKg).to(equal(@"KG"));
        expect(SDLObsshDisplayUnitLb).to(equal(@"LB"));
    });
});

QuickSpecEnd
