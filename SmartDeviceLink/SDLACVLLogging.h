//
//  SDLACVLLogging.h
//  SmartDeviceLink
//
//  Created by Arnold Goetzke on 5/27/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import <SmartDeviceLink/SmartDeviceLink.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDLACVLLogging : SDLRPCStruct

+ (void)logMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
