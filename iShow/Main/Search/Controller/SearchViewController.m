//
//  SearchViewController.m
//  iShow
//
//  Created by Phyllis on 16/6/2.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

-(instancetype)init{
    
    if (self = [super init]) {
        
        self.title = @"关注";
        
        self.tabBarItem.image = [UIImage imageNamed:@"discover@2x.png"];
        
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"discover_on@2x.png"];
        
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
