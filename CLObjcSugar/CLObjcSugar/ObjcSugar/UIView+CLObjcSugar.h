//
//  UIView+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CLObjcSugar)

#pragma mark - Frame
/// 视图原点
@property (nonatomic) CGPoint cl_viewOrigin;
/// 视图尺寸
@property (nonatomic) CGSize cl_viewSize;

#pragma mark - Frame Origin
/// frame 原点 x 值
@property (nonatomic) CGFloat cl_x;
/// frame 原点 y 值
@property (nonatomic) CGFloat cl_y;

#pragma mark - Frame Size
/// frame 尺寸 width
@property (nonatomic) CGFloat cl_width;
/// frame 尺寸 height
@property (nonatomic) CGFloat cl_height;

#pragma mark - 截屏
/// 当前视图内容生成的图像
@property (nonatomic, readonly, nullable)UIImage *cl_capturedImage;

@end
