//
//  NSString+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CLObjcSugar)

/// 拼接了`文档目录`的全路径
@property (nullable, nonatomic, readonly) NSString *cl_documentDirectory;
/// 拼接了`缓存目录`的全路径
@property (nullable, nonatomic, readonly) NSString *cl_cacheDirecotry;
/// 拼接了临时目录的全路径
@property (nullable, nonatomic, readonly) NSString *cl_tmpDirectory;

@end

@interface NSString (HMBase64)

/// BASE 64 编码的字符串内容
@property(nullable, nonatomic, readonly) NSString *cl_base64encode;
/// BASE 64 解码的字符串内容
@property(nullable, nonatomic, readonly) NSString *cl_base64decode;

@end
