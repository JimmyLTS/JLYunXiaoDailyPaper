//
//  StoryExtra.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoryExtra : NSObject

/**long_comments  长评论总数*/
@property (nonatomic, strong) NSNumber *long_comments;

/**popularity  点赞总数*/
@property (nonatomic, strong) NSNumber *popularity;

/**short_comments  短评论总数*/
@property (nonatomic, strong) NSNumber *short_comments;

/**comments  评论总数*/
@property (nonatomic, strong) NSNumber *comments;

@end
