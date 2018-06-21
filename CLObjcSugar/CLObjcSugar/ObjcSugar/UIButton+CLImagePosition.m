//
//  UIButton+CLImagePosition.m
//  CLObjcSugar
//
//  Created by fuyongYU on 2018/6/21.
//  Copyright © 2018年 夜猫子. All rights reserved.
//

#import "UIButton+CLImagePosition.h"

@implementation UIButton (CLImagePosition)

-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor selTitle:(NSString*_Nullable)selTitle selTitleColor:(UIColor*_Nullable)selTitleColor font:(UIFont*_Nullable)font image:(NSString*_Nullable)image selImage:(NSString*_Nullable)selImage target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    if (self = [super init]) {
        //设置文字
        if (title != nil && titleColor != nil) {
            [self setTitle:title forState:UIControlStateNormal];
            [self setTitleColor:titleColor forState:UIControlStateNormal];
        }
        if (selTitle != nil && titleColor != nil) {
            [self setTitle:selTitle forState:UIControlStateSelected];
            [self setTitleColor:titleColor forState:UIControlStateSelected];
        }
        //设置图片
        if (image!= nil) {
            [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        }
        if (selImage != nil) {
            [self setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
        }
        self.titleLabel.font = font;
        [self addTarget:target action:action forControlEvents:events];
        
    }
    return self;
}


-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor font:(UIFont*_Nullable)font target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    return [self initWithTitle:title titleColor:titleColor selTitle:nil selTitleColor:nil font:font image:nil selImage:nil target:target action:action events:events];
}

-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title TitleColor:(UIColor*_Nullable)titleColor selTitle:(NSString*_Nullable)selTitle selTitleColor:(UIColor*_Nonnull)selTitleColor font:(UIFont*_Nullable)font target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    return [self initWithTitle:title titleColor:titleColor selTitle:selTitle selTitleColor:selTitleColor font:font image:nil selImage:nil target:target action:action events:events];
}

-(instancetype _Nullable )initWithImage:(NSString*_Nullable)image target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    return [self initWithTitle:nil titleColor:nil selTitle:nil selTitleColor:nil font:nil image:image selImage:nil target:target action:action events:events];
}

-(instancetype _Nullable )initWithImage:(NSString*_Nullable)image selImage:(NSString*_Nullable)selImage target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    return [self initWithTitle:nil titleColor:nil selTitle:nil selTitleColor:nil font:nil image:image selImage:selImage target:target action:action events:events];
}


-(instancetype _Nullable )initWithTitle:(NSString*_Nullable)title titleColor:(UIColor*_Nullable)titleColor  font:(UIFont*_Nullable)font  image:(NSString*_Nullable)image  target:(nullable id)target action:(nonnull SEL)action events:(UIControlEvents)events{
    return [self initWithTitle:title titleColor:titleColor selTitle:nil selTitleColor:nil font:font image:image selImage:nil target:target action:action events:events];
}



- (void)setImagePosition:(YDImagePosition)postion spacing:(CGFloat)spacing {
    [self setTitle:self.currentTitle forState:UIControlStateNormal];
    [self setImage:self.currentImage forState:UIControlStateNormal];
    
    CGFloat imageWidth = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    
    CGFloat labelWidth = [self.titleLabel.text sizeWithFont:self.titleLabel.font].width;
    CGFloat labelHeight = [self.titleLabel.text sizeWithFont:self.titleLabel.font].height;
    
    CGFloat imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
    CGFloat labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
    CGFloat labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
    
    CGFloat tempWidth = MAX(labelWidth, imageWidth);
    CGFloat changedWidth = labelWidth + imageWidth - tempWidth;
    CGFloat tempHeight = MAX(labelHeight, imageHeight);
    CGFloat changedHeight = labelHeight + imageHeight + spacing - tempHeight;
    
    switch (postion) {
        case Left:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            self.contentEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, spacing/2);
            break;
            
        case Right:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + spacing/2), 0, imageWidth + spacing/2);
            self.contentEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, spacing/2);
            break;
            
        case Top:
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
            self.contentEdgeInsets = UIEdgeInsetsMake(imageOffsetY, -changedWidth/2, changedHeight-imageOffsetY, -changedWidth/2);
            break;
            
        case Bottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
            self.contentEdgeInsets = UIEdgeInsetsMake(changedHeight-imageOffsetY, -changedWidth/2, imageOffsetY, -changedWidth/2);
            break;
            
        default:
            break;
    }
    
}
@end
