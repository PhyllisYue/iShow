//
//  HomeViewController.m
//  iShow
//
//  Created by Phyllis on 16/6/2.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


-(instancetype)init{
    
    if (self = [super init]) {
        
        self.title = @"首页";
        
        self.tabBarItem.image = [UIImage imageNamed:@"home@2x.png"];
        
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"home_on@2x.png"];
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
