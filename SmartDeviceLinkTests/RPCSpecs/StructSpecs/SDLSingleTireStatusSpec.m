//
//  SDLSingleTireStatusSpec.m
//  SmartDeviceLink


#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLSingleTireStatus.h"
#import "SDLComponentVolumeStatus.h"
#import "SDLNames.h"

QuickSpecBegin(SDLSingleTireStatusSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLSingleTireStatus* testStruct = [[SDLSingleTireStatus alloc] init];
        
        testStruct.status = SDLComponentVolumeStatusNormal;
        
        expect(testStruct.status).to(equal(SDLComponentVolumeStatusNormal));
    });
    
    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLNameStatus:SDLComponentVolumeStatusLow} mutableCopy];
        SDLSingleTireStatus* testStruct = [[SDLSingleTireStatus alloc] initWithDictionary:dict];
        
        expect(testStruct.status).to(equal(SDLComponentVolumeStatusLow));
    });
    
    it(@"Should return nil if not set", ^ {
        SDLSingleTireStatus* testStruct = [[SDLSingleTireStatus alloc] init];
        
        expect(testStruct.status).to(beNil());
    });
});

QuickSpecEnd
