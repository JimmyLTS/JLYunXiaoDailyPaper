//
//  WebImgScrollView.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//  图片浏览器

#import <UIKit/UIKit.h>

@interface WebImgScrollView : UIView

/** imgUrl  图像地址*/
@property (nonatomic, copy) NSString *imgUrl;

+ (WebImgScrollView *)showImageWithStr:(NSString *)url;

@end
