//
//  LoginController.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "LoginController.h"
#import "LeftSideViewController.h"

#import "CWAccountTool.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
}

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}


- (void)loginWithAppName:(NSString *)name{
    
    //    UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:name];
    //    snsPlatform.loginClickHandler(self,[UMSocialControllerService defaultControllerService],YES,^(UMSocialResponseEntity *response){
    //        if (response.responseCode == UMSResponseCodeSuccess) {
    //
    //            UMSocialAccountEntity *snsAccount = [[UMSocialAccountManager socialAccountDictionary] valueForKey:name];
    //            CWAccount *account = [[CWAccount alloc] init];
    //            account.usernName = snsAccount.userName;
    //            account.iconUrl = snsAccount.iconURL;
    //            [CWAccountTool saveAccount:account];
    //            [self.delegate updateAccount];
    //            [self back];
    //        }});
}

//- (IBAction)sinaLogin {
//    [self loginWithAppName:UMShareToSina];
//}
//
//- (IBAction)QQlogin {
//    [self loginWithAppName:UMShareToQQ];
//    
//}

@end
