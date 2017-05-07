//
//  NSBundle+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSBundle (CLObjcSugar)

/// 当前版本号字符串
+ (nullable NSString *)cl_currentVersion;

/// 与当前屏幕尺寸匹配的启动图像
+ (nullable UIImage *)cl_launchImage;

@end
