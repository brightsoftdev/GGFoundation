//
//  GGSoundManager.m
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGSoundManager.h"

@implementation GGSoundManager

@synthesize backgroundMusicVolume = _backgroundMusicVolume;
@synthesize effectVolume = _effectVolume;
@synthesize effects = _effects;
@synthesize backgroundMusics = _backgroundMusics;

SYNTHESIZE_SINGLETON(GGSoundManager);

- (id)init{
    if ((self=[super init])) {
        _simpleAudioEngine = [SimpleAudioEngine sharedEngine];
        _backgroundMusicVolume = 1.0;
        _effectVolume = 1.0;
    }
    return self;
}

- (void)dealloc
{
    self.effects = nil;
    self.backgroundMusics = nil;
    [SimpleAudioEngine end];
    _simpleAudioEngine = nil;
    [super dealloc];
}


- (void)setBackgroundMusicVolume:(float)volume
{
    _backgroundMusicVolume = volume;
    
    _simpleAudioEngine.backgroundMusicVolume = _backgroundMusicVolume;
}

- (void)setEffectVolume:(float)volume
{
    _effectVolume = volume;
    
    _simpleAudioEngine.effectsVolume = _effectVolume;
}

- (void) loadEffect:(NSArray *)effects
{
    self.effects = effects;
    for (NSString *name in effects) {
        [_simpleAudioEngine preloadEffect:name];
    }
}

- (void) loadBackgroundMusic:(NSString *)musicName
{
    self.backgroundMusics = musicName;
    [_simpleAudioEngine preloadBackgroundMusic:musicName];
}

- (void) playBackgroundMusic:(NSString *)pathFile loop:(BOOL)isLoop
{
    if (isLoop) {
        [_simpleAudioEngine playBackgroundMusic:pathFile];
        return;
    }
    [_simpleAudioEngine playBackgroundMusic:pathFile loop:isLoop];
}

- (void) stopBackgroundMusic
{
    [_simpleAudioEngine stopBackgroundMusic];
}

- (void) pauseBackgroundMusic
{
    [_simpleAudioEngine pauseBackgroundMusic];
}

- (void) resumeBackgroundMusic
{
    [_simpleAudioEngine resumeBackgroundMusic];
}

- (void) playEffect:(NSString *)pathFile
{    
    [_simpleAudioEngine playEffect:pathFile];
}

- (void) unloadEffects
{
    for (NSString *filePath in _effects) {
        [_simpleAudioEngine unloadEffect:filePath];
    }
}


@end
