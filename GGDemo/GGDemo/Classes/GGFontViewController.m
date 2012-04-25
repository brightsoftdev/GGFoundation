//
//  GGFontViewController.m
//  GGDemo
//
//  Created by lim edwon on 12-4-24.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGFontViewController.h"
#import "GGFoundation.h"

@implementation GGFontViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

//sharekit

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    FontLabel *label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 30, 200, 30) fontName:@"方正卡通简体.ttf" pointSize:18];
    label.text = @"字体fds";
    [self.view addSubview:label];
    
    label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 70, 200, 30) fontName:@"全新硬笔隶书简.ttf" pointSize:18];
    label.text = @"全新硬笔隶书简.ttf";
    [self.view addSubview:label];
    
    label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 110, 200, 30) fontName:@"POP字体mix-w5.TTF" pointSize:18];
    label.text = @"POP字体mix-w5.TTF";
    [self.view addSubview:label];
    
    label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 150, 200, 30) fontName:@"钟齐王庆华毛笔简体.TTF" pointSize:18];
    label.text = @"钟齐王庆华毛笔简体.TTF";
    [self.view addSubview:label];
    
    label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 190, 200, 30) fontName:@"韩绍杰邯郸体.ttf" pointSize:18];
    label.text = @"韩绍杰邯郸体.ttf";
    [self.view addSubview:label];
    
    label = [[FontLabel alloc] initWithFrame:CGRectMake(50, 230, 200, 30) fontName:@"国祥手写体.ttf" pointSize:18];
    label.text = @"国祥手写体.ttf";
    [self.view addSubview:label];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
