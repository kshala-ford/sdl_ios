//
//  SDLModuleTypeSpec.m
//  SmartDeviceLinkTests
//
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLModuleType.h"

QuickSpecBegin(SDLModuleTypeSpec)

describe(@"Individual Enum Value Tests", ^ {
    it(@"Should match internal values", ^ {
        expect(SDLModuleTypeRadio).to(equal(@"RADIO"));
        expect(SDLModuleTypeClimate).to(equal(@"CLIMATE"));
        expect(SDLModuleTypeSeat).to(equal(@"SEAT"));
        expect(SDLModuleTypeAudio).to(equal(@"AUDIO"));
        expect(SDLModuleTypeLight).to(equal(@"LIGHT"));
        expect(SDLModuleTypeHMISettings).to(equal(@"HMI_SETTINGS"));
        expect(SDLModuleTypePttb).to(equal(@"PTTB"));
        expect(SDLModuleTypeObssh).to(equal(@"OBSSH"));
        expect(SDLModuleTypeTlc).to(equal(@"TLC"));
    });
});

QuickSpecEnd
