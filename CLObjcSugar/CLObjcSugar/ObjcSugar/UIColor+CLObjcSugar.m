//
//  UIColor+CLObjcSugar.m
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "UIColor+CLObjcSugar.h"

@implementation UIColor (CLObjcSugar)

#pragma mark - 颜色函数
/// 使用十六进制数字生成颜色
///
/// @param hex hex，格式 0xFFEEDD
///
/// @return UIColor
+ (nonnull instancetype)cl_colorWithHex:(u_int32_t)hex {
    
    u_int8_t red = (hex & 0xFF0000) >> 16;
    u_int8_t green = (hex & 0x00FF00) >> 8;
    u_int8_t blue = hex & 0x0000FF;
    
    return [UIColor cl_colorWithRed:red green:green blue:blue];
    
}

/// 使用指定的 r / g / b 数值生成颜色
///
/// @param red   red
/// @param green green
/// @param blue  blue
///
/// @return UIColor
+ (nonnull instancetype)cl_colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue {
    
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
    
}

/// 生成随机颜色
///
/// @return UIColor
+ (nonnull instancetype)cl_randomColor {
    
    u_int8_t red = arc4random_uniform(256);
    u_int8_t green = arc4random_uniform(256);
    u_int8_t blue = arc4random_uniform(256);
    
    return [UIColor cl_colorWithRed:red green:green blue:blue];
    
}

#pragma mark - 颜色值
/// 返回当前颜色的 red 的 0～255 值
- (u_int8_t)cl_redValue {
    
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[0] * 255);
    
}
/// 返回当前颜色的 green 的 0～255 值
- (u_int8_t)cl_greenValue {
    
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[1] * 255);
    
}
/// 返回当前颜色的 blue 的 0～255 值
- (u_int8_t)cl_blueValue {
    
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[2] * 255);
    
}
/// 返回当前颜色的 alpha 值
- (CGFloat)hm_alphaValue {
    
    return CGColorGetComponents(self.CGColor)[3];
    
}

@end
