//
//  UIBarButtonItem+Extention.m
//  微博
//
//  Created by 赵天 on 16/4/13.
//  Copyright © 2016年 赵天. All rights reserved.
//

#import "UIBarButtonItem+Extention.h"
#import "UIView+frame.h"
@implementation UIBarButtonItem (Extention)

+ (UIBarButtonItem *)itemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action

{
    UIButton *leftBtn = [[UIButton alloc] init];
    [leftBtn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [leftBtn setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    leftBtn.size = leftBtn.currentBackgroundImage.size;
    [leftBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
}

@end
