//
//  NSDateFormatter+Expand.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "NSDateFormatter+Expand.h"

static NSDateFormatter * dateFormatter;

@implementation NSDateFormatter (Expand)

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [super allocWithZone:zone];
    });
    return dateFormatter;
}

+ (instancetype)shareDateFormatter {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        dateFormatter = [[self alloc]init];
        dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"zh-CH"];
    });
    return dateFormatter;
}

@end
