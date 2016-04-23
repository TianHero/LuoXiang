//
//  ZTMyCell.h
//  百思不得姐
//
//  Created by 赵天 on 16/4/9.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZTMyCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *worldLabel;

@property (weak, nonatomic) IBOutlet UIImageView *showImageView;

@property (weak, nonatomic) IBOutlet UIButton *dingBtn;
@property (weak, nonatomic) IBOutlet UIButton *caiBtn;
@property (weak, nonatomic) IBOutlet UIButton *repostBtn;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *showImageViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *showImageViewWidth;

@end
