//
//  DetailViewTool.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CallBack) (id obj);

@interface DetailViewTool : NSObject

/**
 *  获得某个id的详细内容
 */
+ (void)getDetailStoryId:(NSNumber *)storyId Callback:(CallBack)callBack;

/**
 *  获得id的点赞评论数
 */
+ (void)getStoryExtraWithStoryId:(NSNumber *)storyId Callback:(CallBack)callBack;

@end
