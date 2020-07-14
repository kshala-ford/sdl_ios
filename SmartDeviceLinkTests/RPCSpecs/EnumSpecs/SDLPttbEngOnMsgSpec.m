//
//  SDLPttbEngOnMsgSpec.m
//  SmartDeviceLinkTests
//
//  Created by Tanda, Satbir (S.S.) on 4/18/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLPttbEngOnMsg.h"

QuickSpecBegin(SDLPttbEngOnMsgSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLPttbEngOnMsgOk).to(equal(@"OK"));
        expect(SDLPttbEngOnMsgDisplayWarning).to(equal(@"DISPLAY_WARNING"));
        expect(SDLPttbEngOnMsgDisplayQuestion).to(equal(@"DISPLAY_QUESTION"));
        expect(SDLPttbEngOnMsgNotUsed).to(equal(@"NOT_USED"));
    });
});

QuickSpecEnd
