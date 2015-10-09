//
//  FrameFitSize.m
//  BYBeautyTips
//
//  Created by yongzhang on 15/6/15.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "FrameFitSize.h"

@implementation FrameFitSize

//根据宽度和文字来适配label的尺寸
+ (CGRect)frameWithString:(NSString *)string
                 andWidth:(double)width
                  andFont:(double)font
{
    
    CGSize constraintSize = CGSizeMake(width, 10000);
    //文本绘制参数
    NSStringDrawingOptions options = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin;
    //文本属性
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:font]};
    // 获得尺寸
    CGRect rect = [string boundingRectWithSize:constraintSize options:options
                                    attributes:attributes context:NULL];
    return rect;
}

+ (CGRect)frameWithString:(NSString *)string
                 andHeight:(double)height
                  andFont:(double)font
{
    
    CGSize constraintSize = CGSizeMake(1000, height);
    //文本绘制参数
    NSStringDrawingOptions options = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin;
    //文本属性
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:font]};
    // 获得尺寸
    CGRect rect = [string boundingRectWithSize:constraintSize options:options
                                    attributes:attributes context:NULL];
    return rect;
}

@end
