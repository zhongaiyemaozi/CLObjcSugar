//
//  NSDate+CLObjcSugar.h
//  CLOBJSugar
//
//  Created by 夜猫子 on 2017/5/7.
//  Copyright © 2017年 夜猫子. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CLObjcSugar)

#pragma mark - 单例
+ (nonnull NSDateFormatter *)cl_sharedDateFormatter;
+ (nonnull NSCalendar *)cl_sharedCalendar;

#pragma mark - 日期方法
/// 返回指定时间差值的日期字符串
///
/// @param delta 时间差值
///
/// @return 日期字符串，格式：yyyy-MM-dd HH:mm:ss
+ (nonnull NSString *)cl_dateStringWithDelta:(NSTimeInterval)delta;

/// 返回日期格式字符串
///
/// 具体格式如下：
///     - 刚刚(一分钟内)
///     - X分钟前(一小时内)
///     - X小时前(当天)
///     - MM-dd HH:mm(一年内)
///     - yyyy-MM-dd HH:mm(更早期)
@property (nonnull, nonatomic, readonly) NSString *cl_dateDescription;

@end
