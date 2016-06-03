//
//  SearchViewController.m
//  iShow
//
//  Created by Phyllis on 16/6/2.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchCell.h"

//444




@interface SearchViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;

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
    
    [self createTableView];
}

//创建表视图
-(void)createTableView{

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    _tableView.dataSource = self;
    
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    
}

#pragma mark ----------------- 代理

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{

    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identi = @"cell";
    
    SearchCell *cell = [tableView dequeueReusableCellWithIdentifier:identi];
    
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle]loadNibNamed:@"SearchCell" owner:self options:nil]lastObject];
    }
    
    return cell;
}

@end
