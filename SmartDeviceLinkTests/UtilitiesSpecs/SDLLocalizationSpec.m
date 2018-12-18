//
//  SDLLocalizationSpec.m
//  SmartDeviceLinkTests
//
//  Created by Kujtim Shala (Ford) on 11.12.18.
//  Copyright © 2018 smartdevicelink. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>
#import <OCMock/OCMock.h>

#import "SDLlocalization.h"

NSBundle *mockBundle;
id mockClassBundle;

void SDLLocalizationSpecMockBundle(NSArray<NSString *> *localizations, NSArray<NSString *> *pathLocalizations, NSArray<NSString *> *preferredLocalizations) {
    mockBundle = OCMPartialMock(NSBundle.mainBundle);
    mockClassBundle = OCMClassMock([NSBundle class]);
    
    OCMStub(mockBundle.preferredLocalizations).andReturn(preferredLocalizations);
    OCMStub(mockBundle.localizations).andReturn(localizations);
    for (NSString *lstring in pathLocalizations) {
        NSString *lpath = [NSString stringWithFormat:@"/var/test/%@.lproj", lstring];
        OCMStub([mockBundle pathForResource:lstring ofType:@"lproj"]).andReturn(lpath);
        OCMStub(ClassMethod([mockClassBundle bundleWithPath:lpath])).andReturn(mockBundle);
        
        expect([mockBundle pathForResource:lstring ofType:@"lproj"]).to(equal(lpath));
    }
    
    expect(mockBundle.preferredLocalizations).to(equal(preferredLocalizations));
    expect(mockBundle.localizations).to(equal(localizations));
}

void SDLLocalizationSpecStopMocking() {
    if (mockBundle)      [(id)mockBundle stopMocking];
    if (mockClassBundle) [mockClassBundle stopMocking];
    
    mockBundle = nil;
    mockClassBundle = nil;
}

QuickSpecBegin(SDLLocalizationSpec)

afterEach(^{
    SDLLocalizationSpecStopMocking();
});

describe(@"Create localization", ^{
    context(@"default localization", ^{
        it(@"singleton object matching bundle", ^{
            NSArray<NSString *> *testLocalizations = @[@"de_DE", @"de"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *l1 = [SDLLocalization defaultLocalization];
            SDLLocalization *l2 = [SDLLocalization defaultLocalization];
            expect(l1.localizations).to(equal(testLocalizations));
            expect(l1).to(equal(l2));
        });
    });
    
    context(@"with matching localizations", ^{
        it(@"should contain all localization items", ^{
            NSArray<NSString *> *testLocalizations = @[@"en_US", @"en", @"de"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:testLocalizations];
            
            expect(object.localizations).to(equal(testLocalizations));
        });
    });
    
    context(@"with target subset only", ^{
        it(@"should include subset", ^{
            NSArray<NSString *> *testLocalizations = @[@"en_US", @"en", @"de"];
            NSArray<NSString *> *subArray = [testLocalizations subarrayWithRange:NSMakeRange(0, 2)];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:subArray];
            
            expect(object.localizations).to(equal(subArray));
        });
    });
    
    context(@"with target and bundle subset", ^{
        it(@"should include subset", ^{
            NSArray<NSString *> *testLocalizations = @[@"en_US", @"en", @"de"];
            NSArray<NSString *> *subArray = [testLocalizations subarrayWithRange:NSMakeRange(0, 2)];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, subArray);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:subArray];
            
            expect(object.localizations).to(equal(subArray));
        });
    });
    
    context(@"with mismatching subset", ^{
        it(@"should match bundle localizations", ^{
            NSArray<NSString *> *testLocalizations = @[@"en_US", @"en", @"de"];
            NSArray<NSString *> *mismatchArray = @[@"fr"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:mismatchArray];
            
            expect(object.localizations).to(equal(testLocalizations));
        });
    });
    
    context(@"with no paths", ^{
        it(@"should match main bundle", ^{
            NSArray<NSString *> *testLocalizations = @[@"en", @"de"];
            NSArray<NSString *> *mismatchArray = @[@"fr"];
            SDLLocalizationSpecMockBundle(testLocalizations, @[], testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:mismatchArray];
            
            expect(object.localizations).to(equal(@[@"en"]));
        });
    });
    
    context(@"with Hant script for TW", ^{
        it(@"should find Hant", ^{
            NSArray<NSString *> *testLocalizations = @[@"zh-Hant", @"zh"];
            NSArray<NSString *> *mismatchArray = @[@"zh_TW"];
            NSArray<NSString *> *result = @[@"zh-Hant"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:mismatchArray];
            
            expect(object.localizations).to(equal(result));
        });
    });
    
    context(@"with Hans script for CN", ^{
        it(@"should find Hans", ^{
            NSArray<NSString *> *testLocalizations = @[@"zh-Hans", @"zh"];
            NSArray<NSString *> *mismatchArray = @[@"zh_CN"];
            NSArray<NSString *> *result = @[@"zh-Hans"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [[SDLLocalization alloc] initWithPreferredLocalizations:mismatchArray];
            
            expect(object.localizations).to(equal(result));
        });
    });
    
    context(@"with convenient initializer", ^{
        it(@"should find Hans", ^{
            NSArray<NSString *> *testLocalizations = @[@"zh-Hans-CN", @"zh", @"en"];
            NSArray<NSString *> *result = @[@"zh-Hans-CN", @"zh"];
            SDLLocalizationSpecMockBundle(testLocalizations, testLocalizations, testLocalizations);
            
            SDLLocalization *object = [SDLLocalization localizationForLanguage:@"zh" region:@"CN" script:@"Hans"];
            expect(object.localizations).to(equal(result));
        });
    });
});

QuickSpecEnd