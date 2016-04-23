//
//  ZTMyCell.m
//  百思不得姐
//
//  Created by 赵天 on 16/4/9.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTMyCell.h"

@implementation ZTMyCell





//- (void)setList:(ZTPostList *)list
//{
//    _list = list;
//    
//    self.nameLabel.text = list.name;
//    
//    self.timeLabel.text = [ZTTools dateStr:list.create_time];
//    
//    self.worldLabel.text = list.text;
//    
//    [self.dingBtn setTitle:[list.ding  stringValue] forState:UIControlStateNormal];
//    
//    [self.caiBtn setTitle:[list.cai  stringValue] forState:UIControlStateNormal];
//    
//    [self.repostBtn setTitle:[list.repost  stringValue] forState:UIControlStateNormal];
//    
//    [self.commentBtn setTitle:[list.comment  stringValue] forState:UIControlStateNormal];
//    
//    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:list.profile_image]];
// 
////    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:list.bimageuri]];
//    
//    //自适应cell中showImageView的高度
//    if (list.bimageuri)
//    {
//        [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:list.bimageuri] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
//        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
//            //改变约束
//            self.showImageViewHeight.constant = image.size.height;
//            self.showImageViewWidth.constant = image.size.width;
//            [self.showImageView setImage:image];
//            [self setNeedsLayout];
//        }];
//    }else{
//        self.showImageViewHeight.constant = 0;
//        [self setNeedsLayout];
//    }
//    
//    
//}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
