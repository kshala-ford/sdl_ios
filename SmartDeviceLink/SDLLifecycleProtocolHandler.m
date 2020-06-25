//
//  SDLProtocolDelegateHandler.m
//  SmartDeviceLink
//
//  Created by Joel Fischer on 6/10/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLLifecycleProtocolHandler.h"

#import "SDLConfiguration.h"
#import "SDLControlFramePayloadRPCStartService.h"
#import "SDLGlobals.h"
#import "SDLLifecycleConfiguration.h"
#import "SDLLifecycleRPCAdapter.h"
#import "SDLLogMacros.h"
#import "SDLNotificationConstants.h"
#import "SDLNotificationDispatcher.h"
#import "SDLProtocol.h"
#import "SDLProtocolHeader.h"
#import "SDLProtocolMessage.h"
#import "SDLRPCFunctionNames.h"
#import "SDLRPCMessage.h"
#import "SDLRPCMessageType.h"
#import "SDLTimer.h"

static const float StartSessionTime = 10.0;

@interface SDLLifecycleProtocolHandler ()

@property (weak, nonatomic) SDLNotificationDispatcher *notificationDispatcher;

@property (strong, nonatomic) SDLTimer *rpcStartServiceTimeoutTimer;
@property (copy, nonatomic) NSString *appId;

@end

@implementation SDLLifecycleProtocolHandler

- (instancetype)initWithProtocol:(SDLProtocol *)protocol notificationDispatcher:(SDLNotificationDispatcher *)notificationDispatcher configuration:(SDLConfiguration *)configuration {
    self = [super init];
    if (!self) { return nil; }

    _protocol = protocol;
    _notificationDispatcher = notificationDispatcher;

    _appId = configuration.lifecycleConfig.fullAppId ? configuration.lifecycleConfig.fullAppId : configuration.lifecycleConfig.appId;
    _protocol.appId = _appId;

    [_protocol.protocolDelegateTable addObject:self];

    return self;
}

- (void)start {
    [self.protocol start];
}

- (void)stop {
    [self.protocol stop];
}


#pragma mark - SDLProtocolDelegate

/// Called when the transport is opened. We will send the RPC Start Service and wait for the RPC Start Service ACK
- (void)onProtocolOpened {
    [self.notificationDispatcher postNotificationName:SDLTransportDidConnect infoObject:nil];

    SDLControlFramePayloadRPCStartService *startServicePayload = [[SDLControlFramePayloadRPCStartService alloc] initWithVersion:SDLMaxProxyProtocolVersion];
    [self.protocol startServiceWithType:SDLServiceTypeRPC payload:startServicePayload.data];

    if (self.rpcStartServiceTimeoutTimer == nil) {
        self.rpcStartServiceTimeoutTimer = [[SDLTimer alloc] initWithDuration:StartSessionTime repeat:NO];
        __weak typeof(self) weakSelf = self;
        self.rpcStartServiceTimeoutTimer.elapsedBlock = ^{
            SDLLogE(@"Start session timed out after %f, closing the connection.", StartSessionTime);
            [weakSelf performSelector:@selector(onProtocolClosed) withObject:nil afterDelay:0.1];
        };
    }
    [self.rpcStartServiceTimeoutTimer start];
}

/// Called when the transport is closed.
- (void)onProtocolClosed {
    [self.notificationDispatcher postNotificationName:SDLTransportDidDisconnect infoObject:nil];
}

- (void)onTransportError:(NSError *)error {
    [self.notificationDispatcher postNotificationName:SDLTransportConnectError infoObject:error];
}

- (void)handleProtocolStartServiceACKMessage:(SDLProtocolMessage *)startServiceACK {
    [self.rpcStartServiceTimeoutTimer cancel];
    SDLLogD(@"Start Service (ACK) SessionId: %d for serviceType %d", startServiceACK.header.sessionID, startServiceACK.header.serviceType);

    if (startServiceACK.header.serviceType == SDLServiceTypeRPC) {
        [self.notificationDispatcher postNotificationName:SDLRPCServiceDidConnect infoObject:nil];
    }
}

- (void)handleProtocolStartServiceNAKMessage:(SDLProtocolMessage *)startServiceNAK {
    [self.rpcStartServiceTimeoutTimer cancel];
    SDLLogD(@"Start Service (NAK): SessionId: %d for serviceType %d", startServiceNAK.header.sessionID, startServiceNAK.header.serviceType);

    if (startServiceNAK.header.serviceType == SDLServiceTypeRPC) {
        [self.notificationDispatcher postNotificationName:SDLRPCServiceConnectionDidError infoObject:nil];
    }
}

- (void)handleProtocolEndServiceACKMessage:(SDLProtocolMessage *)endServiceACK {
    [self.rpcStartServiceTimeoutTimer cancel];
    SDLLogD(@"End Service (ACK): SessionId: %d for serviceType %d", endServiceACK.header.sessionID, endServiceACK.header.serviceType);

    if (endServiceACK.header.serviceType == SDLServiceTypeRPC) {
        [self.notificationDispatcher postNotificationName:SDLRPCServiceDidDisconnect infoObject:nil];
    }
}

- (void)onProtocolMessageReceived:(SDLProtocolMessage *)msg {
    NSDictionary<NSString *, id> *rpcMessageAsDictionary = [msg rpcDictionary];
    SDLRPCMessage *receivedMessage = [[SDLRPCMessage alloc] initWithDictionary:rpcMessageAsDictionary];
    NSString *fullName = [self sdl_fullNameForMessage:receivedMessage];

    // From the function name, create the corresponding RPCObject and initialize it
    NSString *functionClassName = [NSString stringWithFormat:@"SDL%@", fullName];
    SDLRPCMessage *newMessage = [[NSClassFromString(functionClassName) alloc] initWithDictionary:rpcMessageAsDictionary];

    // Adapt the incoming message then call the callback
    NSArray<SDLRPCMessage *> *adaptedMessages = [SDLLifecycleRPCAdapter adaptRPC:newMessage];
    for (SDLRPCMessage *message in adaptedMessages) {
        [self sdl_sendCallbackForMessage:message];
    }
}

- (void)sdl_sendCallbackForMessage:(SDLRPCMessage *)message {
    // Log the RPC message
    SDLLogV(@"Message received: %@", message);

    SDLNotificationName notificationName = [self sdl_notificationNameForMessage:message];
    if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameResponse]) {
        [self.notificationDispatcher postRPCResponseNotification:notificationName response:(SDLRPCResponse *)message];
    } else if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameRequest]) {
        [self.notificationDispatcher postRPCRequestNotification:notificationName request:(SDLRPCRequest *)message];
    } else if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameNotification]) { // TODO: This won't always work, some are "didChange"
        [self.notificationDispatcher postRPCNotificationNotification:notificationName notification:(SDLRPCNotification *)message];
    }
}

#pragma mark - Utilities

- (SDLNotificationName)sdl_notificationNameForMessage:(SDLRPCMessage *)message {
    NSString *messageName = message.name;
    if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameResponse]) {
        return [NSString stringWithFormat:@"com.sdl.response.%@", messageName];
    } else if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameRequest]) {
        return [NSString stringWithFormat:@"com.sdl.request.%@", messageName];
    } else if ([message.messageType isEqualToEnum:SDLRPCMessageTypeNameNotification]) {
        return [NSString stringWithFormat:@"com.sdl.notification.%@", messageName];
    }

    return messageName;
}

- (NSString *)sdl_fullNameForMessage:(SDLRPCMessage *)message {
    NSString *functionName = message.name;
    NSString *messageType = message.messageType;

    // If it's a response, append "response"
    if ([messageType isEqualToEnum:SDLRPCMessageTypeNameResponse]) {
        if (![functionName isEqualToEnum:SDLRPCFunctionNameGenericResponse]) {
            functionName = [NSString stringWithFormat:@"%@Response", functionName];
        }
    }

    return functionName;
}

@end
