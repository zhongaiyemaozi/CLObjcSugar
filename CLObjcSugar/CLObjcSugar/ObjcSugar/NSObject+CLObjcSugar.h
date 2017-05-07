//
//  NSObject+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CLObjcSugar)

/// 使用字典创建模型对象
///
/// @param dict 字典
///
/// @return 模型对象
+ (instancetype)cl_objectWithDict:(NSDictionary *)dict;

@end
