//
//  BaseModel.h
//  PRO1
//
//  Created by CORYIL on 16/3/22.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

@property (nonatomic,strong)NSDictionary *mapDic;//key:原来字典的key object:新的属性名

- (instancetype)initWithDic:(NSDictionary *)dictionary;

- (void)setAttributes:(NSDictionary *)dictionary;

/**
 *  使用说明:
 
        亲爱的58期的朋友们,如果你遇到字典中的key与你写的属性名不一致的情况
 
        那么 在子类化的model的m文件中,覆写
 
        - (void)setAttributes:(NSDictionary *)dictionary{
 
                self.mapDic = @{@"字典的key":@"属性名"}
 
                [super setAttributes:dictionary];
        }
 
        此致 敬礼!
 
                            爱你们的锐哥❤️

 */

@end
