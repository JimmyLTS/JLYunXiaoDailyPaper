//
//  NewsNavigation.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NewsNavigation;

@protocol NewsNavigationDelegate <NSObject>

@optional

- (void)didTouchUpNaviBar:(NewsNavigation *)naviBar btnTag:(NSInteger)tag;

@end

@interface NewsNavigation : UIView

@property (nonatomic, weak) id <NewsNavigationDelegate> delegate;

@property (nonatomic, strong) NSNumber *id;

@end
