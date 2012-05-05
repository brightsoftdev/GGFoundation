//
//  GGUtil.h
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGUtil : NSObject

+ (CGRect)screenFrame;

+ (CGSize)screenSize;

// 为了开发时查看系统的字体，一定要时真机字体
+ (void)displaySystemFamilyFont;

@end
