//
//  ThemeTool.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "ThemeTool.h"
#import "MJExtension.h"

@implementation ThemeTool

+ (void)getThemeWithSuccessfulBlock:(SuccessfulBlock)block {
    
    [HttpTool get:@"http://news-at.zhihu.com/api/4/themes" params:nil success:^(id json) {
        NSArray *array = [NSArray array];
        array = [Theme mj_objectArrayWithKeyValuesArray: json[@"others"]];
        block(array);
        
    } failure:^(NSError *error) {
        nil;
    }];
    
}

@end
