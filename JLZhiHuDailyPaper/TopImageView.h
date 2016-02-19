//
//  TopImageView.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopImageView : UIImageView

/**
 *  给tableView添加下拉伸缩的imageView
 *
 *  @param tableView 在此tableView上添加
 *
 *  @return 添加的imageView
 *
 */
+ (TopImageView *)attachToTableView:(UITableView *)tableView;

@end
