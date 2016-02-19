//
//  ThemeNews.h
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StoryModel.h"

@interface ThemeNews : NSObject

/** storys 故事*/
@property (nonatomic, strong) NSArray *stories;

/** image 背景图片*/
@property (nonatomic, copy) NSString *image;

@end
