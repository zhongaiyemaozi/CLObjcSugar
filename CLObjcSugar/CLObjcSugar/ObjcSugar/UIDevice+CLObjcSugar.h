//
//  UIDevice+CLObjcSugar.h
//  CLObjcSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (CLObjcSugar)

/**
 判断机型
 
 @return 返回机型
 */
+ (NSString*)cl_deviceVersion;

@end
