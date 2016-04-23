//
//  UIBarButtonItem+Extention.h
//  微博
//
//  Created by 赵天 on 16/4/13.
//  Copyright © 2016年 赵天. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extention)

+ (UIBarButtonItem *)itemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action;

@end
