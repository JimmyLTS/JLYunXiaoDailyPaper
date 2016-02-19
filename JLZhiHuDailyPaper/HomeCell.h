//
//  HomeCell.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StoryModel,HomeCell;

@protocol HomeCellDelegate <NSObject>

@optional

- (UIViewController *)getViewControllerWithId:(NSNumber *)storyId;

@end

@interface HomeCell : UITableViewCell<UIViewControllerPreviewingDelegate>

@property (nonatomic, strong) StoryModel *storyModel;
@property (nonatomic, strong) id <HomeCellDelegate>delegate;

@end
