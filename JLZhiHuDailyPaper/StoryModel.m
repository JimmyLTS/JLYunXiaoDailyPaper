//
//  StoryModel.m
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "StoryModel.h"

@implementation StoryModel

@synthesize id = _id;

@end

@implementation SectionModel

+ (NSDictionary *)mj_objectClassInArray
{
    return @{
             @"stories" : [StoryModel class],
             @"top_stories" : [StoryModel class]
             };
}

@end