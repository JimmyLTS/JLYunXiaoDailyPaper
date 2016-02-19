//
//  ThemeTool.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Theme.h"

typedef void(^SuccessfulBlock)(id obj);

@interface ThemeTool : NSObject

/**
 *  获得主题日报的列表
 *
 *  @param block 回调主题日报数据
 */

+ (void)getThemeWithSuccessfulBlock:(SuccessfulBlock)block;

@end
