//
//  SDLPttbEngOnMsg.h
//  SmartDeviceLink-iOS
//
//  Created by Tanda, Satbir (S.S.) on 4/14/20.
//  Copyright © 2020 smartdevicelink. All rights reserved.
//

#import "SDLEnum.h"

/**
 * Identifies the engine on message for the box.
 *
 */
typedef SDLEnum SDLPttbEngOnMsg SDL_SWIFT_ENUM;

/**
 * @abstract Eng On Msg : OK
 */
extern SDLPttbEngOnMsg const OK;

/**
 * @abstract Eng On Msg : DISPLAY_WARNING.
 */
extern SDLPttbEngOnMsg const DISPLAY_WARNING;

/**
 * @abstract Eng On Msg : DISPLAY_QUESTION.
 */
extern SDLPttbEngOnMsg const DISPLAY_QUESTION;

/**
 * @abstract Eng On Msg : NOT_USED.
 */
extern SDLPttbEngOnMsg const NOT_USED;
