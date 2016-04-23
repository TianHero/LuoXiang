//
//  ZTMainTableView.m
//  百思不得姐
//
//  Created by 赵天 on 16/4/8.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTDiscoverTable.h"
#import "ZTMyCell.h"

@implementation ZTDiscoverTable
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        
        [self registerNib:[UINib nibWithNibName:@"ZTMyCell" bundle:nil] forCellReuseIdentifier:@"resuseCell"];
    /*1*///设置tableViewCell的自动识别cell高度,通过约束的改变来自动识别
        //必须要实现estimatedHeightForRowAtIndexPath代理方法
        self.rowHeight = UITableViewAutomaticDimension;
}
    return self;
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZTMyCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"resuseCell" forIndexPath:indexPath];
    
    switch (indexPath.row)
    {
        case 0:
            [myCell.caiBtn setTitle:@"119" forState:UIControlStateNormal];
            [myCell.dingBtn setTitle:@"23" forState:UIControlStateNormal];
            [myCell.commentBtn setTitle:@"19" forState:UIControlStateNormal];
            myCell.timeLabel.text = @"2016年4月23日 11:30";
            myCell.nameLabel.text = @"小白";
            myCell.iconImageView.image = [UIImage imageNamed:@"touxiang1"];
            myCell.showImageView.image = [UIImage imageNamed:@"lmrzd"];
            myCell.worldLabel.text = @"救命啊，今天龙门的人不少啊，我类个去！！！";
            break;
        case 1:
            myCell.timeLabel.text = @"2016年4月22日 15:28";
            myCell.nameLabel.text = @"ZKB";
            myCell.iconImageView.image = [UIImage imageNamed:@"touxiang2"];
            myCell.showImageView.image = [UIImage imageNamed:@"suitanghua"];
            [myCell.caiBtn setTitle:@"123" forState:UIControlStateNormal];
            [myCell.dingBtn setTitle:@"102" forState:UIControlStateNormal];
            [myCell.commentBtn setTitle:@"43" forState:UIControlStateNormal];
            myCell.worldLabel.text = @"我做梦都没有想到有500斤重金属牡丹，洛阳隋唐遗址植物园真是个神奇的地方 ";
            break;
        case 2:
            [myCell.caiBtn setTitle:@"50" forState:UIControlStateNormal];
            [myCell.dingBtn setTitle:@"98" forState:UIControlStateNormal];
            [myCell.commentBtn setTitle:@"312" forState:UIControlStateNormal];
            myCell.timeLabel.text = @"2016年4月21日 10:03";
            myCell.nameLabel.text = @"柳大尉";
            myCell.iconImageView.image = [UIImage imageNamed:@"touxiang3"];
            myCell.showImageView.image = [UIImage imageNamed:@"baimabaima"];
            myCell.worldLabel.text = @"突然有一种，皈依我佛的冲动。阿弥陀佛";
            break;
        case 3:
            [myCell.caiBtn setTitle:@"90" forState:UIControlStateNormal];
            [myCell.dingBtn setTitle:@"82" forState:UIControlStateNormal];
            [myCell.commentBtn setTitle:@"5" forState:UIControlStateNormal];
            myCell.timeLabel.text = @"2016年4月21日 12:33";
            myCell.nameLabel.text = @"书法家";
            myCell.iconImageView.image = [UIImage imageNamed:@"touxiagn4"];
            myCell.showImageView.image = [UIImage imageNamed:@"longtanxiadeshui"];
            myCell.worldLabel.text = @"这是一个玩水的好地方";
            break;
            
        default:
            break;
    }
    
    
    return myCell;
}
#pragma mark -- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //最好写一个非常大的值，不然数据会做一些干扰
    return 1000;
}

@end
