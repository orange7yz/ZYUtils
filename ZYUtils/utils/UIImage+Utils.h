//
//  UIImage+Utils.h
//  BYBeautyTips
//
//  Created by Lik on 14/11/18.
//  Copyright (c) 2014年 杭州贝宇网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Utils)

+ (UIImage *) imageWithColor:(UIColor *)color size:(CGSize)size;
- (UIImage *) imageScaledToSize:(CGSize)newSize;
- (UIImage *) imageWithTintColor:(UIColor *)tintColor;
- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;

@end
