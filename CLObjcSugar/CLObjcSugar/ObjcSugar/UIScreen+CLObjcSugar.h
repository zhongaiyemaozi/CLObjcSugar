//
//  UIScreen+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (CLObjcSugar)

/// 屏幕宽度
+ (CGFloat)cl_screenWidth;
/// 屏幕高度
+ (CGFloat)cl_screenHeight;
/// 分辨率
+ (CGFloat)cl_scale;

@end
