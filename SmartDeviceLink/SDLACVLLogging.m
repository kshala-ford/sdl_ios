//
//  SDLACVLLogging.m
//  SmartDeviceLink
//
//  Created by Arnold Goetzke on 5/27/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLACVLLogging.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@implementation SDLACVLLogging

static NSString *logMessageKey = @"LogMessage";
static NSString *notificationName = @"com.cvl.ford.CVLoggingNotification";
static NSString *preCursor = @"ACVL SDL Log: ";

+ (void)logMessage:(NSString *)message {
    NSString *logMessage = [preCursor stringByAppendingString:message];
    NSDictionary *userInfo = [[NSDictionary alloc] initWithObjectsAndKeys:
                              logMessage, logMessageKey
                              , nil];
    NSNotification *notification = [[NSNotification alloc] initWithName:notificationName object:nil userInfo:userInfo];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

@end

NS_ASSUME_NONNULL_END
