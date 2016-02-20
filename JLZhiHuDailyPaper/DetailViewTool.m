//
//  DetailViewTool.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "DetailViewTool.h"
#import "MJExtension.h"
#import "DetailStory.h"

@implementation DetailViewTool

+ (void)getDetailStoryWithStoryId:(NSNumber *)storyId Callback:(CallBack)callBack{
    [HttpTool get:[NSString stringWithFormat:@"http://news-at.zhihu.com/api/4/news/%@",storyId] params:nil success:^(id json) {
        DetailStory *story = [DetailStory mj_objectWithKeyValues:json];
        story.htmlUrl = [NSString stringWithFormat:@"<html><head><link rel=\"stylesheet\" href=%@></head><body>%@</body></html>",story.css[0],story.body];
        
        callBack(story);
        
        
    } failure:^(NSError *error) {
        nil;
    }];
}

+ (void)getStoryExtraWithStoryId:(NSNumber *)storyId Callback:(CallBack)callBack{
    
    [HttpTool get:[NSString stringWithFormat:@"http://news-at.zhihu.com/api/4/story-extra/%@",storyId] params:nil success:^(id json) {
        
        StoryExtra *extra = [StoryExtra mj_objectWithKeyValues:json];
        callBack(extra);
        
    } failure:^(NSError *error) {
        nil;
    }];
    
}
@end
