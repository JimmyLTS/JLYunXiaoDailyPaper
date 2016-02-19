//
//  LeftSideViewController.h
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainController;

@interface LeftSideViewController : UIViewController

@property (nonatomic, weak) MainController *delegate;

- (void)updateAccount;

@end
