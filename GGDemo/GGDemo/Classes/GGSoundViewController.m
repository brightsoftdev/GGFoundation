//
//  GGSoundViewController.m
//  GGDemo
//
//  Created by lim edwon on 12-4-24.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGSoundViewController.h"
#import "GGFoundation.h"

@implementation GGSoundViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
         NSLog(@"%@: %@", NSStringFromSelector(_cmd), self);
        // Custom initialization
        self.title = @"Sound Test";
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma IB event
- (IBAction)switchEvent:(id)sender
{
    UISwitch *swithCont = (UISwitch *)sender;
    switch (swithCont.on) {
        case YES:
            [[GGSoundManager sharedGGSoundManager] playBackgroundMusic:@"backMusic.mp3" loop:YES];
            break;
        case NO:
            [[GGSoundManager sharedGGSoundManager] stopBackgroundMusic];
            break;
        default:
            break;
    }
}

- (IBAction)volumeControl:(id)sender
{
    UISlider *volume = (UISlider *)sender;
    [GGSoundManager sharedGGSoundManager].backgroundMusicVolume = volume.value;
    [GGSoundManager sharedGGSoundManager].effectVolume = volume.value;
}

- (IBAction)pause:(id)sender
{
    [[GGSoundManager sharedGGSoundManager] pauseBackgroundMusic];
}

- (IBAction)resume:(id)sender
{
    [[GGSoundManager sharedGGSoundManager] resumeBackgroundMusic];
}

- (IBAction)openEffect:(id)sender
{
    [[GGSoundManager sharedGGSoundManager] playEffect:@"crow.mp3"];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[GGSoundManager sharedGGSoundManager] loadBackgroundMusic:@"backMusic.mp3"];
    //NSArray *effects = [NSArray arrayWithObjects:@"crow.mp3", nil];
    NSArray *effects = [NSArray arrayWithObjects:@"crow.mp3", nil];
    [[GGSoundManager sharedGGSoundManager] loadEffect:effects];
   // NSSet *effect1s = [NSSet setWithObjects:@"crow.mp3", @"backMusic.mp3", nil];
 //   [[GGSoundManager sharedGGSoundManager] loadEffect:effect1s andTarget:self];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [[GGSoundManager sharedGGSoundManager] stopBackgroundMusic];
    
    [[GGSoundManager sharedGGSoundManager] unloadEffectsWith:[NSArray arrayWithObjects:@"crow.mp3", nil]];
    NSLog(@"%@: %@", NSStringFromSelector(_cmd), self);
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void) dealloc
{
    [[GGSoundManager sharedGGSoundManager] stopBackgroundMusic];
     [[GGSoundManager sharedGGSoundManager] unloadEffectsWith:[NSArray arrayWithObjects:@"crow.mp3", nil]];
     NSLog(@"%@: %@", NSStringFromSelector(_cmd), self);
    [super dealloc];
}

@end
