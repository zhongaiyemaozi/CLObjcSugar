//
//  UIImageView+CLObjcSugar.m
//  CLObjcSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "UIImageView+CLObjcSugar.h"

@implementation UIImageView (CLObjcSugar)

/**
 播放GIF
 
 @param images images
 */
- (void)cl_playGifAnim:(NSArray *)images {
    
    if (!images.count) {
        return;
    }
    //动画图片数组
    self.animationImages = images;
    //执行一次完整动画所需的时长
    self.animationDuration = 0.5;
    //动画重复次数, 设置成0 就是无限循环
    self.animationRepeatCount = 0;
    [self startAnimating];
    
}

/**
 停止动画
 */
- (void)cl_stopGifAnim {
    
    if (self.isAnimating) {
        [self stopAnimating];
    }
    [self removeFromSuperview];
    
}

@end
