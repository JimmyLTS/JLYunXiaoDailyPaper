//
//  HomePageController.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "HomePageController.h"
#import "ContainerController.h"
#import "DetailViewController.h"

#import "ArrayDataSource.h"
#import "StoryModelTool.h"

#import "AppDelegate.h"
#import "MainController.h"

#import "HomeCell.h"
#import "HomeHeaderView.h"
#import "CycleScrollView.h"
#import "CircleRefreshView.h"

static CGFloat const rowHeight = 90.f;
static CGFloat const sectionHeight = 35.f;
static NSString * const homeCellIdentifier = @"HomeCell";

@interface HomePageController ()<UITableViewDelegate,HomeCellDelegate>

@property (nonatomic, strong) StoryModelTool *tool;
@property (nonatomic, strong) ArrayDataSource *newsArrayDataSource;
@property (nonatomic, strong) NSMutableArray *stories;

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) CycleView *headerView;
@property (nonatomic, strong) UIView *naviBar;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *leftSideButton;
@property (nonatomic, strong) CircleRefreshView *refreshView;

@end

@implementation HomePageController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
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
