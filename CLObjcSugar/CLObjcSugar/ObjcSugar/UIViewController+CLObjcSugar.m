//
//  UIViewController+CLObjcSugar.m
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "UIViewController+CLObjcSugar.h"
#import <objc/runtime.h>
#import "UIImageView+CLObjcSugar.h"

static const void *GifKey = &GifKey;
@implementation UIViewController (CLObjcSugar)

/**
 * 在当前视图控制器中添加子控制器，将子控制器的视图添加到 view 中
 *
 * @param childController 要添加的子控制器
 * @param view            要添加到的视图
 */
- (void)cl_addChildController:(UIViewController *)childController intoView:(UIView *)view {
    
    // 1> 添加子控制器 － 否则响应者链条会被打断，导致事件无法正常传递，而且错误非常难改！
    [self addChildViewController:childController];
    
    // 2> 添加子控制器的视图
    [view addSubview:childController.view];
    
    // 3> 完成子控制器的添加
    [childController didMoveToParentViewController:self];
    
}

-(UIImageView *)cl_gifView {
    
    return objc_getAssociatedObject(self, GifKey);
    
}

- (void)setCl_gifView:(UIImageView *)cl_gifView {
    
    objc_setAssociatedObject(self, GifKey, cl_gifView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

/**
 *  显示GIF加载动画
 *
 *  @param images gif图片数组, 不传的话默认是自带的
 *  @param view   显示在哪个view上, 如果不传默认就是self.view
 */
- (void)cl_showGifLoding:(NSArray *)images inView:(UIView *)view {
    
    if (!images.count) {
        images = @[[UIImage imageNamed:@"hold1_60x72"], [UIImage imageNamed:@"hold2_60x72"], [UIImage imageNamed:@"hold3_60x72"]];
    }
    UIImageView *gifView = [[UIImageView alloc] init];
    if (!view) {
        view = self.view;
    }
    [view addSubview:gifView];
    gifView.center = self.view.center;
    gifView.frame = CGRectMake(0, 0, 60, 70);
    
    self.cl_gifView = gifView;
    [gifView cl_playGifAnim:images];
    
}

/**
 *  取消GIF加载动画
 */
- (void)cl_hideGufLoding {
    
    [self.cl_gifView cl_stopGifAnim];
    self.cl_gifView = nil;
    
}

/**
 *  判断数组是否为空
 *
 *  @param array 数组
 *
 *  @return yes or no
 */
- (BOOL)cl_isNotEmpty:(NSArray *)array {
    
    if ([array isKindOfClass:[NSArray class]] && array.count) {
        return YES;
    }
    return NO;
    
}




@end
