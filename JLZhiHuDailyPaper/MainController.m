//
//  MainController.m
//  JLZhiHuDailyPaper
//
//  Created by Jimmy on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "MainController.h"
#import "LeftSideViewController.h"
#import "HomePageController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];

    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    HomePageController *homePageVC = [[HomePageController alloc]init];
    homePageVC.view.backgroundColor = kWhiteColor;
    
    UINavigationController *naviController = [[UINavigationController alloc]initWithRootViewController:homePageVC];
    self.naviController = naviController;
    naviController.navigationBar.hidden = YES;
    
    LeftSideViewController *leftSideDrawerController = [[LeftSideViewController alloc]init];
    leftSideDrawerController.delegate = self;
    
    self.centerViewController = naviController;
    self.leftDrawerViewController = leftSideDrawerController;
    
    [self setMaximumLeftDrawerWidth:220];
    
    [self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self setShouldStretchDrawer:NO];
    
    [self setShowsShadow:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
