//
//  CWAccountTool.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#define CWAccountPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"account.archive"]

#import "CWAccountTool.h"

@implementation CWAccountTool

+ (void)saveAccount:(CWAccount *)account {
    
    [NSKeyedArchiver archiveRootObject:account toFile:CWAccountPath];
}

+ (CWAccount *)account {
    return [NSKeyedUnarchiver unarchiveObjectWithFile:CWAccountPath];
}


@end
