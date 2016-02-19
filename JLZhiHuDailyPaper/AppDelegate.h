//
//  AppDelegate.h
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) MainController *mainViewController;

@end

