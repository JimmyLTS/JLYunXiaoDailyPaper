//
//  CycleScrollView.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//  循环滚动条

#import <UIKit/UIKit.h>

typedef void(^TouchUpTopView)(id topStory);

@interface CycleScrollView : UIView


@end

@interface CycleView : CycleScrollView

@property (nonatomic, copy) TouchUpTopView topViewBlock;

/** topStories 首页滚动新闻 */
@property (nonatomic, strong) NSArray *topStories;

+ (instancetype)attchToView:(UIView *)view observeScrollView:(UIScrollView *)scrollView;

@end

@class DetailStory;

@interface TopView : UIView

@property (nonatomic, strong) DetailStory *detailStory;

+ (instancetype)attchToView:(UIView *)view observeScrollView:(UIWebView *)scrollView;

@end
