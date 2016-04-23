//
//  ZTRecommendViewController.m
//  洛享
//
//  Created by 赵天 on 16/4/23.
//  Copyright © 2016年 scjy. All rights reserved.
//

#import "ZTRecommendViewController.h"
#import "ZTLongmenViewController.h"
#import "ZTBaiMaViewController.h"
#import "ZTJDCell.h"


@interface ZTRecommendViewController ()
@property (weak, nonatomic) IBOutlet UITableView *recommendTableView;

@end

@implementation ZTRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.recommendTableView registerNib:[UINib nibWithNibName:@"ZTJDCell" bundle:nil] forCellReuseIdentifier:@"reuseJDCell"];
    
    [self.view addSubview:self.recommendTableView];
    
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ZTJDCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseJDCell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.nameLabel.text = @"龙门石窟";
            cell.jingjuImageView.image = [UIImage imageNamed:@"longmen"];
            break;
        case 1:
            cell.nameLabel.text = @"白马寺";
            cell.jingjuImageView.image = [UIImage imageNamed:@"baimasi"];
            cell.priceLabel.text = @"50元";
            break;
        case 2:
            cell.nameLabel.text = @"小浪底";
            cell.jingjuImageView.image = [UIImage imageNamed:@"xiaolangdi"];
            cell.priceLabel.text = @"60元";
            break;
        case 3:
            cell.nameLabel.text = @"老街";
            cell.jingjuImageView.image = [UIImage imageNamed:@"laojie"];
            cell.priceLabel.text = @"60元";
            break;
        case 4:
            cell.nameLabel.text = @"牡丹园";
            cell.jingjuImageView.image = [UIImage imageNamed:@"mudanyuan"];
            cell.priceLabel.text = @"50元";
            break;
        case 5:
            cell.nameLabel.text = @"龙潭峡";
            cell.jingjuImageView.image = [UIImage imageNamed:@"longtanxia"];
            cell.priceLabel.text = @"60元";
            break;
            
        default:
            break;
    }
    return cell;
}

#pragma mark -- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300.f;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZTLongmenViewController *longmenVC = [[ZTLongmenViewController alloc] init];
    ZTBaiMaViewController *baimaVC = [[ZTBaiMaViewController alloc] init];
    switch (indexPath.row)
    {
        case 0:
            [self.navigationController pushViewController:longmenVC animated:YES];
            break;
        case 1:
            
            [self.navigationController pushViewController:baimaVC animated:YES];
            break;
        default:
            break;
    }
    
//    if (indexPath.row == 0)
//    {
//        ZTLongmenViewController *longmenVC = [[ZTLongmenViewController alloc] init];
//        [self.navigationController pushViewController:longmenVC animated:YES];
//    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
