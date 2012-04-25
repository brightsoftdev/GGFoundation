//
//  GGAppDelegate.h
//  GGDemo
//
//  Created by lim edwon on 12-4-24.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GGViewController;

@interface GGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GGViewController *viewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
