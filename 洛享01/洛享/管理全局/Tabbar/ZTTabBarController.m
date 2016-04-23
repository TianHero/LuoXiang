//
//  ZTTabBarController.m
//  微博
//
//  Created by 赵天 on 16/4/4.
//  Copyright © 2016年 赵天. All rights reserved.
//

#import "ZTTabBarController.h"
#import "TCProfileController.h"
#import "ZTDiscoverController.h"
#import "TCHomeViewController.h"
#import "ZTNavigationController.h"
#import "ZTRecommendViewController.h"
@interface ZTTabBarController ()

@end

@implementation ZTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TCHomeViewController *home = [[TCHomeViewController alloc] init];
    [self addSubVc:home title:@"首页" imageName:@"tabbar_home" selectImageName:@"tabbar_home_selected_os7"];
    
    ZTRecommendViewController *message = [[ZTRecommendViewController alloc] init];
    [self addSubVc:message title:@"推荐" imageName:@"tabbar_message_center_os7" selectImageName:@"tabbar_message_center_selected_os7"];
    ZTDiscoverController *discover = [[ZTDiscoverController alloc] init];
    [self addSubVc:discover title:@"发现" imageName:@"tabbar_discover_os7" selectImageName:@"tabbar_discover_selected_os7"];
    
    TCProfileController *profile = [[TCProfileController alloc] init];
    [self addSubVc:profile title:@"我" imageName:@"tabbar_profile_os7" selectImageName:@"tabbar_profile_selected_os7"];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addSubVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName
{
//    childVc.view.backgroundColor = kRandomColor;
    childVc.tabBarItem.title = title;
    childVc.navigationItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    childVc.tabBarItem.selectedImage = [UIImage imageNamed:selectImageName];
    //把传进来的子控制器作为一个导航控制器的根，
    ZTNavigationController *nav = [[ZTNavigationController alloc] initWithRootViewController:childVc];
    //不再是添加传进来的子控制器了，而是子控制器作为跟控制器的一个导航控制器，（意思就是tabBar控制器加的四个控制器都是导航控制器，每个导航控制器的跟视图控制器是传进来的TableViewController）
    [self addChildViewController:nav];
}
#pragma mark - Navigation


@end
