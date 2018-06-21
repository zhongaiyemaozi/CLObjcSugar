//
//  UIButton+CLImagePosition.h
//  CLObjcSugar
//
//  Created by fuyongYU on 2018/6/21.
//  Copyright © 2018年 夜猫子. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YDImagePosition) {
    Left = 0,              //图片在左，文字在右，默认
    Right = 1,             //图片在右，文字在左
    Top = 2,               //图片在上，文字在下
    Bottom = 3,            //图片在下，文字在上
};

@interface UIButton (CLImagePosition)

/**1文字*/
-(instancetype _Nullable)initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor font:(UIFont*_Nullable)font target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;

/**2文字*/
-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title TitleColor:(UIColor*_Nullable)titleColor selTitle:(NSString*_Nullable)selTitle selTitleColor:(UIColor*_Nonnull)selTitleColor font:(UIFont*_Nullable)font target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;

/**1图片*/
-(instancetype _Nullable )initWithImage:(NSString*_Nullable)image target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;

/**2图片*/
-(instancetype _Nullable )initWithImage:(NSString*_Nullable)image selImage:(NSString*_Nullable)selImage target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;


/**1文字,1图片*/
-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor  font:(UIFont*_Nullable)font  image:(NSString*_Nullable)image  target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;


/**2文字,2图片*/
-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor selTitle:(NSString*_Nullable)selTitle selTitleColor:(UIColor*_Nullable)selTitleColor font:(UIFont*_Nullable)font image:(NSString*_Nullable)image selImage:(NSString*_Nullable)selImage target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events;

/**设置图片位置,要先设置图片之后才能调用*/
- (void)setImagePosition:(YDImagePosition)postion spacing:(CGFloat)spacing;

@end
