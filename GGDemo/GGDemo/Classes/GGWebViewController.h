//
//  GGWebViewController.h
//  GGDemo
//
//  Created by gtts on 5/12/12.
//  Copyright (c) 2012 TJUT-SCCE-SIPC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGWebViewController : UIViewController<UIWebViewDelegate> {
    IBOutlet UIWebView *myWebView;
}

@property (nonatomic, retain) UIWebView *myWebView;

@end
