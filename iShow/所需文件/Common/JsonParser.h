//
//  JsonParser.h
//  PRO1
//
//  Created by CORYIL on 16/3/25.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonParser : NSObject

/**
 *  通过JSON文件名获取JSON数据
 */
+ (id)jsonFromFileName:(NSString *)fileName;

@end
