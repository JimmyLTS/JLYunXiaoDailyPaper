//
//  CircleRefreshView.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleRefreshView : UIView

+ (CircleRefreshView *)attachObserveToScrollView:(UIScrollView *)scrollView target:(id)target actiion:(SEL)action;

- (void)endRefreshing;

@end
