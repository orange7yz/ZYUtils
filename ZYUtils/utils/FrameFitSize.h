//
//  FrameFitSize.h
//  BYBeautyTips
//
//  Created by yongzhang on 15/6/15.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FrameFitSize : NSObject

+ (CGRect)frameWithString:(NSString *)string
                 andWidth:(double)width
                  andFont:(double)font;
+ (CGRect)frameWithString:(NSString *)string
                andHeight:(double)height
                  andFont:(double)font;

@end
