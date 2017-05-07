//
//  UIImage+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CLObjcSugar)

/// 生成指定颜色的一个`点`的图像
///
/// @param color 颜色
///
/// @return 1 * 1 图像
+ (nonnull UIImage *)cl_singleDotImageWithColor:(nonnull UIColor *)color;


/**
 生成需要的圆角头像

 @param size 绘制图片的大小
 @param fillColor 剪切掉的图片处颜色
 @param completion 完成回调
 */
- (void)cl_cornerImageWithSize:(CGSize)size fillColor:(UIColor *_Nullable)fillColor completion:(void (^_Nullable)(UIImage * _Nullable image))completion;


@end
