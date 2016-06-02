//
//  Mesage.m
//  iShow
//
//  Created by Jean on 16/6/2.
//  Copyright © 2016年 Jean. All rights reserved.
//

#import "Mesage.h"
#import "MesageHeaderView.h"

#define kRowHeight 70 //消息单元格高

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kImgFrame CGRectMake(5, 5, 60, 60) //图片坐标
#define kNamLabFrame CGRectMake(2*kImgFrame.origin.x + kImgFrame.size.width, kImgFrame.origin.y, kScreenWidth/10*8, kImgFrame.size.height/3)//用户名坐标
#define kMesageLabFrame CGRectMake(2*kImgFrame.origin.x+kImgFrame.size.width, kImgFrame.origin.y+kImgFrame.size.height/3 + 2, kScreenWidth/10*8, kImgFrame.size.height/3) //推送消息坐标
#define kDateLabFrame CGRectMake(self.bounds.origin.y-12, kImgFrame.origin.y, 10, kImgFrame.size.height/3) //推送时间坐标

#define kNamLabFont [UIFont systemFontOfSize:15]//用户名字体大小
#define kMesageLabFont [UIFont systemFontOfSize:13] //推送消息字体大小
#define kDateLabFont [UIFont systemFontOfSize:10] //推送时间字体大小


@interface Mesage ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_mesageTV;//消息单元格
    UIImageView *_userImgV;//消息用户头像
    UILabel *_userNamLab;//消息用户名称
    UILabel *_mesageLab;//推送的消息
    UILabel *_dateLab;//推送的时间
    MesageHeaderView *_mesageHV;//头视图的固定单元格
}
@end

@implementation Mesage

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
    
        _mesageTV = [[UITableView alloc]initWithFrame: CGRectMake(0, 0, 414, 739) style:UITableViewStylePlain];
        _mesageHV = [[MesageHeaderView alloc]initWithFrame:CGRectMake(0, 0, 414, 300)];
        _mesageTV.tableHeaderView = _mesageHV;
        _mesageTV.delegate = self;
        _mesageTV.dataSource = self;
        _mesageTV.rowHeight = kRowHeight;
        
        [self addSubview:_mesageTV];
    }
    
    return self;
}



#pragma mark --- -- --- UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier = @"mesageCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
        //头像
        _userImgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"球.png"]];
        _userImgV.frame =  kImgFrame;
        [cell addSubview:_userImgV];
        
        //网名
        _userNamLab = [[UILabel alloc]initWithFrame:kNamLabFrame];
        _userNamLab.text = @"iShow";
        _userNamLab.font = kNamLabFont;
        [cell addSubview:_userNamLab];
        
        //消息
        _mesageLab = [[UILabel alloc]initWithFrame:CGRectMake(2*kImgFrame.origin.x + kImgFrame.size.width, kImgFrame.origin.y + kImgFrame.size.height/3 + 2, kScreenWidth/10*8, kImgFrame.size.height/3)];
        _mesageLab.text = @"这是一个测试.................................";
        _mesageLab.font = kMesageLabFont;
        _mesageLab.textColor = [UIColor darkGrayColor];
        [cell addSubview:_mesageLab];
        
        //时间
        _dateLab = [[UILabel alloc]initWithFrame:kDateLabFrame];
        _dateLab.text = @"09:09";
        _dateLab.font = kMesageLabFont;
        _dateLab.textColor = [UIColor darkGrayColor];
        [cell addSubview:_dateLab];

    }
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    return 150;
//}

@end
