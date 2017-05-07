//
//  UIView+CLObjcSugar.m
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "UIView+CLObjcSugar.h"

@implementation UIView (CLObjcSugar)

#pragma mark - Frame
- (CGPoint)cl_viewOrigin {
    return self.frame.origin;
}

- (void)setCl_viewOrigin:(CGPoint)cl_viewOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin = cl_viewOrigin;
    self.frame = newFrame;
}

- (CGSize)cl_viewSize {
    return self.frame.size;
}

- (void)setCl_viewSize:(CGSize)cl_viewSize {
    CGRect newFrame = self.frame;
    newFrame.size = cl_viewSize;
    self.frame = newFrame;
}

#pragma mark - Frame Origin
- (CGFloat)cl_x {
    return self.frame.origin.x;
}

- (void)setCl_x:(CGFloat)cl_x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = cl_x;
    self.frame = newFrame;
}

- (CGFloat)cl_y {
    return self.frame.origin.y;
}

- (void)setCl_y:(CGFloat)cl_y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = cl_y;
    self.frame = newFrame;
}

#pragma mark - Frame Size
- (CGFloat)cl_width {
    return self.frame.size.width;
}

- (void)setCl_width:(CGFloat)cl_width {
    CGRect newFrame = self.frame;
    newFrame.size.width = cl_width;
    self.frame = newFrame;
}

- (CGFloat)cl_height {
    return self.frame.size.height;
}

- (void)setCl_height:(CGFloat)cl_height {
    CGRect newFrame = self.frame;
    newFrame.size.height = cl_height;
    self.frame = newFrame;
}

#pragma mark - 截屏
- (UIImage *)cl_capturedImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    UIImage *result = nil;
    if ([self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES]) {
        result = UIGraphicsGetImageFromCurrentImageContext();
    }
    
    UIGraphicsEndImageContext();
    
    return result;
}


@end
