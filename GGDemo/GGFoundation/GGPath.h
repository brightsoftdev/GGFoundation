//
//  GGPath.h
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGPath : NSObject

+ (NSString *)documentPath;
+ (NSString *)documentPathWithFileName:(NSString *)fileName;

+ (NSString *)bundleFile:(NSString *)fileName;
+ (NSString *)bundleFile:(NSString *)fileName andFileType:(NSString *)fileType;

+ (NSData *)dataOfFile:(NSString *) fileName;

/**
 * Whether a file exists
 *@fileName:file name
 */
+ (BOOL)isFileExist:(NSString *)fileName;

@end
