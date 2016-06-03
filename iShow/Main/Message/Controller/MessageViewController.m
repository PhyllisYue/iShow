
//
//  MessageViewController.m
//  iShow
//
//  Created by Phyllis on 16/6/2.
//  Copyright © 2016年 Phyllis. All rights reserved.
//

#import "MessageViewController.h"
#import "PushViewController.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define kGap 10 //内容距离上下的距离
#define kGapLeft 5  //内容距离左边界的距离
#define kNamFontSize 15 //网名字体大小
#define kMsgFontSize 13 //推送消息/时间的字体大小
#define kDateLabWidth 70    //时间的宽度

#define kCellHeight cell.bounds.size.height  //cell的高度
#define kImgWidth _userImgV.bounds.size.width   //头像的宽度


@interface MessageViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_mesageTV;//消息表视图
    UIImageView *_userImgV;//消息用户头像
    UILabel *_userNamLab;//消息用户名称
    UILabel *_mesageLab;//推送的消息
    UILabel *_dateLab;//推送的时间
}

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
    
    //
    [self createTableView];
}



-(void)loadDataFromMaxLeap{
    
}

//
-(void)createTableView{
    
    _mesageTV = [[UITableView alloc]initWithFrame:CGRectMake(0, -40, kScreenWidth, kScreenHeight) style:UITableViewStyleGrouped];
    _mesageTV.delegate = self;
    _mesageTV.dataSource = self;
    _mesageTV.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    _mesageTV.separatorColor = [UIColor lightGrayColor];
    [self.view addSubview:_mesageTV];
}

//取消单元格选中状态
//-(void)unselectCell:(id)sender{
//    [_mesageTV deselectRowAtIndexPath:[_mesageTV indexPathForSelectedRow] animated:nil];
//}
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    //跳转等其他操作
//    [self performSelector:@selector(unselectCell:) withObject:nil afterDelay:0.5];
//}


#pragma mark:TableView的代理方法

//组个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 2;
}

//单元格个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    switch (section) {
        case 0:
            return 3;
            break;
        case 1:
            return 10;
            break;
        default:
            break;
    }
    return 0;
}



//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *indentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
        
//        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
    }

    for (UIView *view in cell.subviews) {
        [view removeFromSuperview];
    }
    
    
    //头像
    _userImgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"球"]];
    _userImgV.frame = CGRectMake(kGapLeft, kGap, kCellHeight - 2*kGap, kCellHeight - 2*kGap);
    [cell addSubview:_userImgV];

    _userNamLab = [[UILabel alloc]initWithFrame:CGRectMake(kImgWidth + 2*kGapLeft, kGap, kScreenWidth/2, kCellHeight - 2*kGap)];
    _mesageLab = [[UILabel alloc]initWithFrame:CGRectMake(kImgWidth + 2*kGapLeft, kCellHeight - (kGap+kCellHeight/3), kScreenWidth*3/4, kCellHeight/3)];
    _dateLab = [[UILabel alloc]initWithFrame:CGRectMake(kScreenWidth -  kDateLabWidth - kGapLeft, kGap, kDateLabWidth, kCellHeight/3)];
    
    _mesageTV.rowHeight = 70;
    switch (indexPath.section) {
        case 0:
        {
//            cell.backgroundColor = [UIColor redColor];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
            //内容
            switch (indexPath.row) {
                case 0:
                    _userNamLab.text = @"@我的";
                    break;
                case 1:
                    _userNamLab.text = @"私信我的";
                    break;
                case 2:
                    _userNamLab.text = @"看我的/赞我的";
                    break;
                default:
                    break;
            }
            [cell addSubview:_userNamLab];
        }
            break;
        case 1:
        {
//            cell.backgroundColor = [UIColor blueColor];

            _userNamLab.frame = CGRectMake(kImgWidth + 2*kGapLeft, kGap, kScreenWidth/2, kCellHeight/3);
            _userNamLab.text = @"XXX网名";
            _userNamLab.font = [UIFont systemFontOfSize:kNamFontSize];
            [cell addSubview:_userNamLab];
            
            //推送的消息
            _mesageLab.text = @"XXX 关注了你/私信了你/赞了你并抢走了你心爱的女朋友";
            _mesageLab.font = [UIFont systemFontOfSize:kMsgFontSize];
            _mesageLab.textColor = [UIColor lightGrayColor];
            [cell addSubview:_mesageLab];
            
            //推送时间
            _dateLab.text = @"99:99";
            _dateLab.font = [UIFont systemFontOfSize:kMsgFontSize];
            _dateLab.textColor = [UIColor lightGrayColor];
            _dateLab.textAlignment = NSTextAlignmentRight;
            [cell addSubview:_dateLab];
        }
            break;
        default:
            break;
    }
    
    return cell;
}


//单元格点击
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PushViewController *pushVC = [[PushViewController alloc]init];
    
    [self.navigationController pushViewController:pushVC animated:YES];
    
}


@end
