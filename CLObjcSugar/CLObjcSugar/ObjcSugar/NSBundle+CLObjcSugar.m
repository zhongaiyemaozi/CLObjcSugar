//
//  NSBundle+CLObjcSugar.m
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import "NSBundle+CLObjcSugar.h"

@implementation NSBundle (CLObjcSugar)

/// 当前版本号字符串
+ (nullable NSString *)cl_currentVersion {
    
    return [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
}

/// 与当前屏幕尺寸匹配的启动图像
+ (nullable UIImage *)cl_launchImage {
    
    NSArray *launchImages = [NSBundle mainBundle].infoDictionary[@"UILaunchImages"];
    
    NSString *sizeString = NSStringFromCGSize([UIScreen mainScreen].bounds.size);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"UILaunchImageOrientation = 'Portrait' AND UILaunchImageSize = %@", sizeString];
    NSArray *result = [launchImages filteredArrayUsingPredicate:predicate];
    
    NSString *imageName = result.lastObject[@"UILaunchImageName"];
    
    return [UIImage imageNamed:imageName];
    
}

@end
