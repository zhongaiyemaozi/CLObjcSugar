//
//  UIScreen+CLObjcSugar.m
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "UIScreen+CLObjcSugar.h"

@implementation UIScreen (CLObjcSugar)

/// 屏幕宽度
+ (CGFloat)cl_screenWidth {
    
    return [UIScreen mainScreen].bounds.size.width;
    
}
/// 屏幕高度
+ (CGFloat)cl_screenHeight {
    
    return [UIScreen mainScreen].bounds.size.height;
    
}
/// 分辨率
+ (CGFloat)cl_scale {
    
    return [UIScreen mainScreen].scale;
    
}

@end
