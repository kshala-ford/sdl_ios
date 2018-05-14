//  SDLProxy.h
//

@class SDLProtocol;
@class SDLPutFile;
@class SDLRPCMessage;
@class SDLStreamingMediaManager;
@class SDLTimer;

#import "SDLProtocolListener.h"
#import "SDLProxyListener.h"
#import "SDLSecurityType.h"
#import "SDLTransportType.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLProxy : NSObject <SDLProtocolListener, NSStreamDelegate> {
    Byte _version;
    Byte _bulkSessionID;
    BOOL _isConnected;
}

@property (nullable, strong, nonatomic) SDLProtocol *protocol;
@property (nullable, strong, nonatomic) id<SDLTransportType> transport;
@property (readonly, copy, nonatomic) NSSet<NSObject<SDLProxyListener> *> *proxyListeners;
@property (strong, nonatomic) SDLTimer *startSessionTimer;
@property (readonly, copy, nonatomic) NSString *proxyVersion;

- (id)initWithTransport:(id<SDLTransportType>)transport delegate:(id<SDLProxyListener>)delegate;

+ (SDLProxy *)iapProxyWithListener:(id<SDLProxyListener>)delegate;
+ (SDLProxy *)tcpProxyWithListener:(id<SDLProxyListener>)delegate tcpIPAddress:(NSString *)ipaddress tcpPort:(NSString *)port;

- (void)addDelegate:(NSObject<SDLProxyListener> *)delegate;
- (void)removeDelegate:(NSObject<SDLProxyListener> *)delegate;

- (void)sendRPC:(SDLRPCMessage *)message;

- (void)handleRPCDictionary:(NSDictionary<NSString *, id> *)dictionary;

- (void)handleProtocolMessage:(SDLProtocolMessage *)msgData;

- (void)addSecurityManagers:(NSArray<Class> *)securityManagerClasses forAppId:(NSString *)appId;

/**
 * Puts data into a file on the module
 * @abstract Performs a putFile for a given input stream, performed in chunks, for handling very large files.
 * @param inputStream A stream containing the data to put to the module.
 * @param putFileRPCRequest A SDLPutFile object containing the parameters for the put(s)
 * @discussion  The proxy will read from the stream based on the max MTU size and send them in individual putFile requests.
 * This may result in multiple responses being received, one for each request.
 * Note: the length parameter of the putFileRPCRequest will be ignored. The proxy will substitute the number of bytes read from the stream.
 */
- (void)putFileStream:(NSInputStream *)inputStream withRequest:(SDLPutFile *)putFileRPCRequest;

@end

NS_ASSUME_NONNULL_END
