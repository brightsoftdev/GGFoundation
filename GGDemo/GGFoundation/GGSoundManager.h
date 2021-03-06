//
//  GGSoundManager.h
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleAudioEngine.h"
#import "GGSingleton.h"

@interface GGSoundManager : NSObject{
    float _backgroundMusicVolume;
    float _effectVolume;
    
    NSMutableArray *_effects;
    NSString *_backgroundMusics;
}

@property (nonatomic, assign) float backgroundMusicVolume;
@property (nonatomic, assign) float effectVolume;
@property (nonatomic, retain) NSMutableArray *effects;
@property (nonatomic, retain) NSString *backgroundMusics;

DECLARE_SINGLETON(GGSoundManager);

- (void)loadEffect:(NSArray *)effects;

- (void)loadBackgroundMusic:(NSString *)musicName;

- (void)playBackgroundMusic:(NSString *)pathFile loop:(BOOL)isLoop;

- (void)stopBackgroundMusic;

- (void)pauseBackgroundMusic;

- (void)resumeBackgroundMusic;

- (void)playEffect:(NSString *)pathFile;

- (void)unloadAllEffect;

- (void)unloadEffectsWith:(NSArray *)effects;

@end
