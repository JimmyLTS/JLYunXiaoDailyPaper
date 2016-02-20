//
//  DetailViewController.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController,ContainerController;

@protocol  DetailViewControllerDelegate <NSObject>

@optional
/**
 *  通知containerController滚动到下一个页面
 *
 */
- (void)scrollToNextViewWithNumber:(NSNumber *)storyId;

- (void)scrollToLastViewWithNumber:(NSNumber *)storyId;


@end


@interface DetailViewController : UIViewController

@property (nonatomic, strong) NSNumber *storyId;

@property (nonatomic, strong) id tool;

@property (nonatomic, weak) id <DetailViewControllerDelegate> delegate;

@end
