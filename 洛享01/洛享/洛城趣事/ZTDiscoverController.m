//
//  ZTDiscoverController.m
//  洛享
//
//  Created by 赵天 on 16/4/23.
//  Copyright © 2016年 赵天. All rights reserved.
//

#import "ZTDiscoverController.h"
#import "ZTDiscoverTable.h"
@interface ZTDiscoverController ()

@end

@implementation ZTDiscoverController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZTDiscoverTable *mTableView = [[ZTDiscoverTable alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:mTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
