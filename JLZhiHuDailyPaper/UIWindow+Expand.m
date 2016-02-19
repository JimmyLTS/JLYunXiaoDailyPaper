//
//  UIWindow+Expand.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "UIWindow+Expand.h"
#import "LaunchViewController.h"

@implementation UIWindow (Expand)

- (void)showLanuchPageAndSetUmeng {
    
    LaunchViewController *launchVC = [[LaunchViewController alloc]init];
    
    //    [UMSocialData setAppKey:@"56824fe767e58eb93c0013fc"];
    //    [UMSocialQQHandler setQQWithAppId:@"1105056922" appKey:@"iEGmtUwfoi57t2AP" url:@"http://www.umeng.com/social"];
    //    [UMSocialSinaHandler openSSOWithRedirectURL:@"http://sns.whalecloud.com/sina2/callback"];
    //    [UMSocialWechatHandler setWXAppId:@"wx6784349eec646c51" appSecret:@"896b5288b28948115539b050ece07ba5" url:@"http://sns.whalecloud.com/sina2/callback"];
    
    [self addSubview:launchVC.view];
}

@end
