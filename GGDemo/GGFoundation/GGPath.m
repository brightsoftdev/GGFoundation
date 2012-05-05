//
//  GGPath.m
//  MCKlotski
//
//  Created by lim edwon on 12-4-21.
//  Copyright (c) 2012年 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGPath.h"

@implementation GGPath

+ (NSString *)documentPath
{
    NSArray *arrDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [arrDir objectAtIndex:0];
}

+ (NSString *)documentPathWithFileName:(NSString *)fileName
{
    NSString *path = [GGPath documentPath];
    path = [path stringByAppendingPathComponent:fileName];
    
    NSError *error;
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (!str) {
        NSLog(@"%@ Data Error : %@", fileName, error);
    }else {
        NSLog(@"%@ data Successfully!!!", fileName);
    }
    return str;
}


+ (NSString *)bundleFile:(NSString *) fileName
{
    NSString *path = [[NSBundle mainBundle] resourcePath];
    return [path stringByAppendingPathComponent:fileName];
}

+ (NSString *)bundleFile:(NSString *)fileName andFileType:(NSString *)fileType
{
    NSString *strPath = [[NSBundle mainBundle] pathForResource:fileName ofType:fileType];
    NSLog(@"Local File Path: %@", strPath);
    
    NSError *error;
    NSString *str = [[NSString alloc] initWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:&error];
    if (!str) {
        NSLog(@"%@ Data Error : %@", fileName, error);
    }else {
        NSLog(@"%@ data Successfully!!!", fileName);
    }
    return [str autorelease];    
}


+ (NSData *)dataOfFile:(NSString *) fileName
{
    return [NSData dataWithContentsOfFile:[GGPath bundleFile:fileName]];
}

+ (BOOL)isFileExist:(NSString *)fileName
{
    NSString *path = [GGPath documentPath];
    NSString *finalPath = [path stringByAppendingPathComponent:fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:finalPath];
}

@end
