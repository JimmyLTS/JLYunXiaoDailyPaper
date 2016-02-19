//
//  HomeHeaderView.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "HomeHeaderView.h"
#import "NSDateFormatter+Expand.h"

@implementation HomeHeaderView

+ (instancetype)HomeHeaderViewWithTableView:(UITableView *)tableView {
    
    static NSString *headerID = @"homeHeader";
    HomeHeaderView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:headerID];
    if (!view) {
        view = [[HomeHeaderView alloc]init];
        view.contentView.backgroundColor = kColor(23, 244, 211, 1);
    }
    
    return view;
    
}

//必须在layoutsubviews 里面写
- (void)layoutSubviews {
    [super layoutSubviews];
    self.textLabel.centerX = self.centerX;
}

#pragma mark - getter and setter
- (void)setDate:(NSString *)str {
    _date = str;
    
    NSDateFormatter *dataFormatter = [NSDateFormatter shareDateFormatter];
    
    [dataFormatter setDateFormat:@"yyyyMMdd"];
    NSDate *date = [dataFormatter dateFromString:str];
    [dataFormatter setDateFormat:@"MM月dd日 EEEE"];
    _date = [dataFormatter stringFromDate:date];
    
    self.textLabel.attributedText = [[NSAttributedString alloc]initWithString:_date attributes:@{
                                                                                                 NSFontAttributeName:[UIFont systemFontOfSize:18],
                                                                                                 NSForegroundColorAttributeName:[UIColor whiteColor]
                                                                                                 }];
                                      
}

@end
