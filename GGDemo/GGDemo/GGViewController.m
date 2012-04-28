//
//  GGViewController.m
//  GGDemo
//
//  Created by lim edwon on 12-4-24.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGViewController.h"
#import "GGSoundViewController.h"
#import "GGFontViewController.h"

@implementation GGViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction)sound:(id)sender
{
    GGSoundViewController *soundController = [[[GGSoundViewController alloc] initWithNibName:@"GGSoundViewController" bundle:nil] autorelease];
    [self.navigationController pushViewController:soundController animated:YES];
}

- (IBAction)font:(id)sender
{
    GGFontViewController *fontController = [[GGFontViewController alloc] init];
    [self.navigationController pushViewController:fontController animated:YES];
    [fontController release];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"项目功能测试";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
