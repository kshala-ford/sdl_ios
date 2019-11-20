//  SDLTransportType.h
//  ACVL_Modified_SDL_File

#import <Foundation/Foundation.h>
#import <ExternalAccessory/ExternalAccessory.h>

#import "SDLTransportDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SDLTransportType <NSObject>

@property (nullable, weak, nonatomic) id<SDLTransportDelegate> delegate;

- (EAAccessory *_Nullable)accessory;

- (void)connect;
- (void)disconnect;
- (void)sendData:(NSData *)dataToSend;

@end

NS_ASSUME_NONNULL_END
