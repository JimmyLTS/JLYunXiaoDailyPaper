//
//  HomeCell.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/18.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "HomeCell.h"
#import "StoryModel.h"
#import "UIImageView+WebCache.h"

@interface HomeCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UIImageView *multipicImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelConstraint;

@end

@implementation HomeCell

- (void)setStoryModel:(StoryModel *)storyModel {
    _storyModel = storyModel;
    
    self.titleLabel.text = storyModel.title;
    NSURL *url = [NSURL URLWithString:storyModel.images[0]];
    
    if (url) {
        self.titleLabelConstraint.constant = 15;
        self.iconImageView.hidden = NO;
        
        [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:storyModel.images[0]] placeholderImage:[UIImage imageNamed:@"News_Avatar"]];
    }else {
        self.titleLabelConstraint.constant = -70;
        self.iconImageView.hidden = YES;
    }
    
    self.multipicImageView.hidden = !storyModel.isMutipic;
}

- (nullable UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    
    UIViewController *vc = [self.delegate getViewControllerWithId:self.storyModel.id];
    
    return vc;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    
}

@end
