//
//  RootTabViewController.h
//  BYBeautyTips
//
//  Created by Lik on 14/11/11.
//  Copyright (c) 2014年 杭州贝宇网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (Utils)

@property (nonatomic) CGFloat left;

@property (nonatomic) CGFloat top;

@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat bottom;

@property (nonatomic) CGFloat width;

@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat centerX;

@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGPoint origin;

@property (nonatomic) CGSize size;

@property (nonatomic, readonly) CGPoint innerCenter;

- (void)removeAllSubviews;

- (void)setTapActionWithBlock:(void (^)(void))block;

- (void)setLongPressActionWithBlock:(void (^)(void))block;

+ (UIView *)verticalSeparateViewWithLength:(CGFloat)length andColor:(UIColor *)color;

+ (UIView *)horizontalSeparateViewWithLength:(CGFloat)length andColor:(UIColor *)color;

+ (instancetype )defaultClassNameNibView;

@end
