//
//  GGUtil.m
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGUtil.h"

@implementation GGUtil

+ (CGRect)screenFrame
{
    CGRect rect = [UIScreen mainScreen].applicationFrame;
    return CGRectMake(0, 0, rect.origin.x + rect.size.width, rect.origin.y + rect.size.height);
} 

+ (CGSize)screenSize
{
    return [UIScreen mainScreen].applicationFrame.size;
}

+ (void)displaySystemFamilyFont
{
    NSLog(@"%@: %@", NSStringFromSelector(_cmd), self);
    
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    
    NSArray *fontNames;
    
    NSInteger indFamily, indFont;
    
    for (indFamily=0; indFamily<[familyNames count]; ++indFamily)
        
    {
        
        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        
        fontNames = [[NSArray alloc] initWithArray:
                     
                     [UIFont fontNamesForFamilyName:
                      
                      [familyNames objectAtIndex:indFamily]]];
        
        for (indFont=0; indFont<[fontNames count]; ++indFont)
            
        {
            
            NSLog(@"    Font name: %@", [fontNames objectAtIndex:indFont]);
            
        }
        
        [fontNames release];
    }
    
    [familyNames release];
}

@end
