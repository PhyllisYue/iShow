
//
//  MessageViewController.m
//  iShow
//
//  Created by Phyllis on 16/6/2.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "MessageViewController.h"
#import "Mesage.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

-(instancetype)init{
    
    if (self = [super init]) {
        
        self.title = @"消息";
        
        self.tabBarItem.image = [UIImage imageNamed:@"payticket@2x.png"];
        
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"payticket_on@2x.png"];
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    Mesage *view = [[Mesage alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:view];
}



@end
