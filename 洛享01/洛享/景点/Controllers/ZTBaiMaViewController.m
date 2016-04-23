//
//  ZTBaiMaViewController.m
//  洛享
//
//  Created by 赵天 on 16/4/23.
//  Copyright © 2016年 scjy. All rights reserved.
//

#import "ZTBaiMaViewController.h"

@interface ZTBaiMaViewController ()

@end

@implementation ZTBaiMaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSURL *url = [NSURL URLWithString:@"http://www.mafengwo.cn/poi/212.html"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.baimaWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
