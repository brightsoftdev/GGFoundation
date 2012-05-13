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
        _backgroundMusicVolume = 1.0;
        _effectVolume = 1.0;
        self.effects = [NSMutableArray array];
    }
    return self;
}

- (void)dealloc
{
    self.effects = nil;
    self.backgroundMusics = nil;
    [SimpleAudioEngine end];
    [super dealloc];
}


- (void)setBackgroundMusicVolume:(float)volume
{
    _backgroundMusicVolume = volume;
    
    [SimpleAudioEngine sharedEngine].backgroundMusicVolume = _backgroundMusicVolume;
}

- (void)setEffectVolume:(float)volume
{
    _effectVolume = volume;
    
    [SimpleAudioEngine sharedEngine].effectsVolume = _effectVolume;
}

- (void)loadEffect:(NSArray *)effects
{
    for (NSString *name in effects) {
        [[SimpleAudioEngine sharedEngine] preloadEffect:name];
    }
    [self.effects addObjectsFromArray:effects];
}

- (void)loadBackgroundMusic:(NSString *)musicName
{
    self.backgroundMusics = musicName;
    [[SimpleAudioEngine sharedEngine] preloadBackgroundMusic:musicName];
}

- (void)playBackgroundMusic:(NSString *)pathFile loop:(BOOL)isLoop
{
    if (isLoop) {
        [[SimpleAudioEngine sharedEngine] playBackgroundMusic:pathFile];
        return;
    }
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:pathFile loop:isLoop];
}

- (void)stopBackgroundMusic
{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
}

- (void)pauseBackgroundMusic
{
    [[SimpleAudioEngine sharedEngine] pauseBackgroundMusic];
}

- (void)resumeBackgroundMusic
{
    [[SimpleAudioEngine sharedEngine] resumeBackgroundMusic];
}

- (void)playEffect:(NSString *)pathFile
{    
    [[SimpleAudioEngine sharedEngine] playEffect:pathFile];
}

- (void)unloadAllEffect
{
    [self unloadEffectsWith:self.effects];
}

- (void)unloadEffectsWith:(NSArray *)effects
{
    for (NSString *filePath in effects) {
        [[SimpleAudioEngine sharedEngine] unloadEffect:filePath];
    }
    [self.effects removeObjectsInArray:effects];
}


@end
