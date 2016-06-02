//
//  MesageHeaderView.m
//  iShow
//
//  Created by Jean on 16/6/2.
//  Copyright © 2016年 Jean. All rights reserved.
//

#import "MesageHeaderView.h"

#define kImgFrame CGRectMake(2, 20, 60, 60) //图片的坐标
#define kLableFrame CGRectMake(2*(kImgFrame.origin.x)+kImgFrame.size.width, kImgFrame.origin.y, 150, 40) //标题的坐标
#define kLableFont [UIFont systemFontOfSize:20] //label 字体的大小

@interface MesageHeaderView ()<UITableViewDataSource, UITableViewDelegate>
{
    UITableView *_tableView;
    UIImageView *_imgV; //图片
    UILabel *_label;    //标题
}
@end

@implementation MesageHeaderView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
        _tableView = [[UITableView alloc]initWithFrame:self.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 100;
        [self addSubview:_tableView];
    }
    
    return self;
}


#pragma mark --- --- --- UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *indentifier = @"header_cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
        
        _imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"球"]];
        _imgV.frame = kImgFrame;
        [cell addSubview:_imgV];
        
        _label = [[UILabel alloc]initWithFrame: kLableFrame];
        _label.font = kLableFont;
        
    }
    
    switch (indexPath.row) {
        case 1:
            _label.text = @"@我的";
            break;
        case 2:
            _label.text = @"评论";
            break;
        case 3:
            _label.text = @"赞我的";
            break;
        default:
            break;
    }
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 100;
}

@end
