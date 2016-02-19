//
//  HomeHeaderView.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StoryModel;

@interface HomeHeaderView : UITableViewHeaderFooterView

@property (nonatomic, copy) NSString *date;

+ (instancetype)HomeHeaderViewWithTableView:(UITableView *)tableView;

@end
