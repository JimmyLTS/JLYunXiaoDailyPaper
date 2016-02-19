//
//  ThemeNewsTool.h
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThemeNews.h"

typedef void(^SuccessfulBlock)(id obj);

@interface ThemeNewsTool : NSObject

- (void)getThemeNewsWithId:(NSNumber *)Id SuccessfulBlock:(SuccessfulBlock)block;

- (BOOL)isTheFirstNewsWithStoryId:(NSNumber *)number;

- (BOOL)isTheLastNewsWithStoryId:(NSNumber *)number;

- (NSNumber *)getNextNewsWithId:(NSNumber *)number;

- (NSNumber *)getLastNewsWithId:(NSNumber *)number;

@end
