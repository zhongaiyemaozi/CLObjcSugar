//
//  CLEncryption.h
//  CLObjcSugar
//
//  Created by 夜猫子 on 2017/5/16.
//  Copyright © 2017年 夜猫子. All rights reserved.
//此类用于加密

#import <Foundation/Foundation.h>

@interface CLEncryption : NSObject

//base64加密
+ (NSString *)cl_base64StringFromText:(NSString *)text Key:(NSString *)key;

//base64解密
+ (NSString *)cl_textFromBase64String:(NSString *)base64 Key:(NSString *)key;
+ (NSData *)cl_dataWithBase64EncodedString:(NSString *)string;

//md5
+ (NSString *)cl_md5string:(NSString *)md5;

//AES加密
+ (NSData *)cl_AES256EncryptWithKey:(NSString *)key Data:(NSData *)data;
//AES解密
+ (NSData *)cl_AES256DecryptWithKey:(NSString *)key Data:(NSData*)data;

//AES加密
+ (NSData *)cl_AES128EncryptWithKey:(NSString *)key Data:(NSData *)data;
//AES解密
+ (NSData *)cl_AES128DecryptWithKey:(NSString *)key Data:(NSData*)data;

@end
