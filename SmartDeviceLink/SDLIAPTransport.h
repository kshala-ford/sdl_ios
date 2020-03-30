//  SDLIAPTransport.h
//
//  ACVL_Modified_SDL_File

#import <ExternalAccessory/ExternalAccessory.h>

#import "SDLTransportType.h"


NS_ASSUME_NONNULL_BEGIN

@interface SDLIAPTransport : NSObject <SDLTransportType>

/**
 *  The subscribed listener.
 */
@property (nullable, weak, nonatomic) id<SDLTransportDelegate> delegate;

- (instancetype)initAsMarketplaceApp:(BOOL)marketplaceApp NS_DESIGNATED_INITIALIZER;

- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
