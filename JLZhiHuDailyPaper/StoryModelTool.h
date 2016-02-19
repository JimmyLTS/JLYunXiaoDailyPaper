//
//  StoryModelTool.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StoryModel.h"

typedef void(^CallBack)(id obj);
typedef void(^UpdateBack)();

@interface StoryModelTool : NSObject

//加载最新数据
- (void)loadNewStoriesWithCallBack:(CallBack)callBack;
//刷新第一天数据
- (void)updateStoriesWithCallBack:(UpdateBack)updateBack;
//加载以前数据
- (void)loadFormerStoriesWithUpdateBack:(UpdateBack)updateBack;

- (BOOL)isTheFirstNewsWithStoryId:(NSNumber *)number;

- (BOOL)isTheLastNewsWithStoryId:(NSNumber *)number;

- (NSNumber *)getNextNewsWithId:(NSNumber *)number;

- (NSNumber *)getLastNewsWithId:(NSNumber *)number;

@end
