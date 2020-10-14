//
//  SDLModuleData.m
//
//  ACVL_Modified_SDL_File

#import "SDLModuleData.h"
#import "SDLRPCParameterNames.h"
#import "SDLClimateControlData.h"
#import "SDLRadioControlData.h"
#import "SDLSeatControlData.h"
#import "SDLAudioControlData.h"
#import "SDLLightControlData.h"
#import "SDLHMISettingsControlData.h"
#import "SDLPttbControlData.h"
#import "SDLObsshControlData.h"
#import "SDLTlcControlData.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLModuleData

- (instancetype)initWithRadioControlData:(SDLRadioControlData *)radioControlData  {
    self = [self init];
    if(!self){
        return nil;
    }
    
    self.moduleType = SDLModuleTypeRadio;
    self.radioControlData = radioControlData;

    return self;
}

- (instancetype)initWithClimateControlData:(SDLClimateControlData *)climateControlData {
    self = [self init];
    if(!self){
        return nil;
    }
    
    self.moduleType = SDLModuleTypeClimate;
    self.climateControlData = climateControlData;
    
    return self;
}

- (instancetype)initWithAudioControlData:(SDLAudioControlData *)audioControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeAudio;
    self.audioControlData = audioControlData;

    return self;
}

- (instancetype)initWithLightControlData:(SDLLightControlData *)lightControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeLight;
    self.lightControlData = lightControlData;

    return self;
}

- (instancetype)initWithHMISettingsControlData:(SDLHMISettingsControlData *)hmiSettingsControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeHMISettings;
    self.hmiSettingsControlData = hmiSettingsControlData;

    return self;
}

- (instancetype)initWithPTTBControlData:(SDLPttbControlData *)pttbControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypePttb;
    self.pttbControlData = pttbControlData;

    return self;
}

- (instancetype)initWithSeatControlData:(SDLSeatControlData *)seatControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeSeat;
    self.seatControlData = seatControlData;

    return self;
}

- (instancetype)initWithPttbControlData:(SDLPttbControlData *)pttbControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeSeat;
    self.pttbControlData = pttbControlData;

    return self;
}

- (instancetype)initWithObsshControlData:(SDLObsshControlData *)obsshControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeObssh;
    self.obsshControlData = obsshControlData;

    return self;
}

- (instancetype)initWithTlcControlData:(SDLTlcControlData *)tlcControlData {
    self = [self init];
    if(!self){
        return nil;
    }

    self.moduleType = SDLModuleTypeTlc;
    self.tlcControlData = tlcControlData;

    return self;
}

- (void)setModuleType:(SDLModuleType)moduleType {
    [self.store sdl_setObject:moduleType forName:SDLRPCParameterNameModuleType];
}

- (SDLModuleType)moduleType {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameModuleType error:&error];
}

- (void)setModuleId:(nullable NSString *)moduleId {
    [self.store sdl_setObject:moduleId forName:SDLRPCParameterNameModuleId];
}

- (nullable NSString *)moduleId {
    NSError *error = nil;
    return [self.store sdl_enumForName:SDLRPCParameterNameModuleId error:&error];
}

- (void)setRadioControlData:(nullable SDLRadioControlData *)radioControlData {
    [self.store sdl_setObject:radioControlData forName:SDLRPCParameterNameRadioControlData];
}

- (nullable SDLRadioControlData *)radioControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameRadioControlData ofClass:SDLRadioControlData.class error:nil];
}

- (void)setClimateControlData:(nullable SDLClimateControlData *)climateControlData {
    [self.store sdl_setObject:climateControlData forName:SDLRPCParameterNameClimateControlData];
}

- (nullable SDLClimateControlData *)climateControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameClimateControlData ofClass:SDLClimateControlData.class error:nil];
}

- (void)setSeatControlData:(nullable SDLSeatControlData *)seatControlData {
    [self.store sdl_setObject:seatControlData forName:SDLRPCParameterNameSeatControlData];
}

- (nullable SDLSeatControlData *)seatControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameSeatControlData ofClass:SDLSeatControlData.class error:nil];
}

- (void)setAudioControlData:(nullable SDLAudioControlData *)audioControlData {
    [self.store sdl_setObject:audioControlData forName:SDLRPCParameterNameAudioControlData];
}

- (nullable SDLAudioControlData *)audioControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameAudioControlData ofClass:SDLAudioControlData.class error:nil];
}

- (void)setLightControlData:(nullable SDLLightControlData *)lightControlData {
    [self.store sdl_setObject:lightControlData forName:SDLRPCParameterNameLightControlData];
}

- (nullable SDLLightControlData *)lightControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameLightControlData ofClass:SDLLightControlData.class error:nil];
}

- (void)setHmiSettingsControlData:(nullable SDLHMISettingsControlData *)hmiSettingsControlData {
    [self.store sdl_setObject:hmiSettingsControlData forName:SDLRPCParameterNameHmiSettingsControlData];
}

- (nullable SDLHMISettingsControlData *)hmiSettingsControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameHmiSettingsControlData ofClass:SDLHMISettingsControlData.class error:nil];
}

- (void)setPttbControlData:(nullable SDLPttbControlData *)pttbControlData {
    [self.store sdl_setObject:pttbControlData forName:SDLRPCParameterNamePttbControlData];
}

- (nullable SDLPttbControlData *)pttbControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNamePttbControlData ofClass:SDLPttbControlData.class error:nil];
}

- (void)setObsshControlData:(nullable SDLObsshControlData *)obsshControlData {
    [self.store sdl_setObject:obsshControlData forName:SDLRPCParameterNameObsshControlData];
}

- (nullable SDLObsshControlData *)obsshControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameObsshControlData ofClass:SDLObsshControlData.class error:nil];
}

- (void)setTlcControlData:(nullable SDLTlcControlData *)tlcControlData {
    [self.store sdl_setObject:tlcControlData forName:SDLRPCParameterNameTlcControlData];
}

- (nullable SDLTlcControlData *)tlcControlData {
    return [self.store sdl_objectForName:SDLRPCParameterNameTlcControlData ofClass:SDLTlcControlData.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
