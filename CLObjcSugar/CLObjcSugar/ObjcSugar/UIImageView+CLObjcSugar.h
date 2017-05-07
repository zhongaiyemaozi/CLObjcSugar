//
//  UIImageView+CLObjcSugar.h
//  CLObjcSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CLObjcSugar)

/**
 播放GIF

 @param images images
 */
- (void)cl_playGifAnim:(NSArray *)images;

/**
 停止动画
 */
- (void)cl_stopGifAnim;

@end
