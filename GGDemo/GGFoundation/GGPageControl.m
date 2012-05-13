//
//  GGPageControl.m
//  GGDemo
//
//  Created by gtts on 5/13/12.
//  Copyright (c) 2012 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGPageControl.h"

@implementation GGPageControl

@synthesize activeImage = _activeImage;
@synthesize inactiveImage = _inactiveImage;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.activeImage = [UIImage imageNamed:@"red_dot.png"];
        self.inactiveImage = [UIImage imageNamed:@"blue_dot.png"];
    }
    return self;
}

- (void)dealloc
{
    self.activeImage = nil;
    self.inactiveImage = nil;
    [super dealloc];
}

- (void)setCurrentPage:(NSInteger)currentPage
{
    [super setCurrentPage:currentPage];
    
    for (int i = 0; i < [self.subviews count]; i++) {
        UIImageView *dot = [self.subviews objectAtIndex:i]; 
        if (i == self.currentPage) {
            dot.image = self.activeImage;
        }else {
            dot.image = self.inactiveImage;
        }
    }
}


@end
