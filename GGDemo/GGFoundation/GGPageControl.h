//
//  GGPageControl.h
//  GGDemo
//
//  Created by gtts on 5/13/12.
//  Copyright (c) 2012 TJUT-SCCE-SIPC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGPageControl : UIPageControl{
    UIImage *_activeImage;
    UIImage *_inactiveImage;
}

@property (nonatomic, retain) UIImage *activeImage;
@property (nonatomic, retain) UIImage *inactiveImage;

@end
