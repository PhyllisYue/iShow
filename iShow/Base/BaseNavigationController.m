//
//  BaseNavigationController.m
//  0321项目一01
//
//  Created by BEVER on 16/3/21.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance]setBackgroundColor:[UIColor blueColor]];
    
    
    //更改导航栏的标题
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.navigationBar.barStyle =  UIBarStyleDefault     ;
    
}

//修改当前控制器的状态栏样式
-(UIStatusBarStyle )preferredStatusBarStyle{

    return  UIStatusBarStyleLightContent;
    
}

@end
