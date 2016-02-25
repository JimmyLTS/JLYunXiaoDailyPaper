//
//  LaunchViewController.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "LaunchViewController.h"
#import "MJExtension.h"
#import "UIImageView+WebCache.h"
#import "LanuchImage.h"

static CGFloat const animationDuration = 3.0;

@interface LaunchViewController ()

@property (nonatomic, strong) UIImageView *launchImage;
@property (nonatomic, strong) UIImageView *logoImage;
@property (nonatomic, strong) UILabel *imageTitle;

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.launchImage];
    [self.view bringSubviewToFront:self.launchImage];
    [self.view addSubview:self.imageTitle];
    
    //获得启动动画图片
    [self updataLaunchImage];
}

#pragma mark - private method
- (void)updataLaunchImage{
    
    [HttpTool get:@"http://news-at.zhihu.com/api/4/start-image/1080*1776" params:nil success:^(id json) {
        LanuchImage *launchImage = [LanuchImage mj_objectWithKeyValues:json];
        
        SDWebImageManager *manager = [SDWebImageManager sharedManager];
        [manager downloadImageWithURL:[NSURL URLWithString:launchImage.img] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            
            nil;
            
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            
            [self.view addSubview:self.logoImage];
            
            self.launchImage.image = image;
            self.imageTitle.text = launchImage.text;
            
            [_imageTitle sizeToFit];
            _imageTitle.centerX = self.view.centerX;
            _imageTitle.y = self.view.height - 30;
            
            [UIView animateWithDuration:animationDuration animations:^{
                _launchImage.transform = CGAffineTransformMakeScale(1.2, 1.2);
            } completion:^(BOOL finished) {
                [self.view removeFromSuperview];
            }];
            
        }];
        
    } failure:^(NSError *error) {
        
    }];
    
}

#pragma mark - getter and setter

- (UIImageView *)launchImage{
    
    if (_launchImage == nil) {
        _launchImage = [[UIImageView alloc] initWithFrame:kScreenBounds];
        _launchImage.image = [UIImage imageNamed:@"Default1"];
    }
    
    return _launchImage;
}

- (UIImageView *)logoImage{
    
    if (_logoImage == nil) {
        _logoImage = [[UIImageView alloc] initWithFrame:CGRectMake(kWidth(95), kHeight(458), kWidth(128), kHeight(49))];
        _logoImage.image = [UIImage imageNamed:@"Login_Logo1"];
    }
    
    return _logoImage;
}

- (UILabel *)imageTitle{
    
    if (_imageTitle == nil) {
        _imageTitle = [[UILabel alloc] init];
        _imageTitle.textColor = kWhiteColor;
        _imageTitle.font = [UIFont systemFontOfSize:14];
    }
    
    return _imageTitle;
}

@end
