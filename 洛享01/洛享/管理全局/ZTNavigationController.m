//
//  ZTNavigationController.m
//  微博
//
//  Created by 赵天 on 16/4/6.
//  Copyright © 2016年 赵天. All rights reserved.
//

#import "ZTNavigationController.h"
#import "UIBarButtonItem+Extention.h"
@interface ZTNavigationController ()
@end
@implementation ZTNavigationController
+ (void)initialize
{
    //通过appearence对象能修改整个工程中的UIBarButtonItem样式
    UIBarButtonItem *appearence = [UIBarButtonItem appearance];
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:17.f],NSForegroundColorAttributeName:[UIColor orangeColor]};
    NSDictionary *highAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:17.f],NSForegroundColorAttributeName:[UIColor blackColor]};
    [appearence setTitleTextAttributes:attributes forState:UIControlStateNormal];
    [appearence setTitleTextAttributes:highAttributes forState:UIControlStateHighlighted];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//拦截push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
        //每个push进来的控制器都有back和more
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_back" highImage:@"navigationbar_back_highlighted" target:self action:@selector(back)];
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_more" highImage:@"navigationbar_more_highlighted" target:self action:@selector(more)];
    }
    [super pushViewController:viewController animated:animated];
}
- (void)back
{
    [self popViewControllerAnimated:YES];
}
- (void)more
{
    [self popToRootViewControllerAnimated:YES];
}
@end
