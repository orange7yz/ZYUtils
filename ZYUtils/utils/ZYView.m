//
//  ZYView.m
//  ZYUtils
//
//  Created by yongzhang on 15/10/23.
//  Copyright © 2015年 yongzhang. All rights reserved.
//

#import "ZYView.h"
IB_DESIGNABLE
@implementation ZYView

- (void)setBoarderWith:(CGFloat)boarderWith
{
    _boarderWith = boarderWith;
    self.layer.borderWidth = boarderWith;
}

- (void)setBoarderColor:(UIColor *)boarderColor
{
    _boarderColor = boarderColor;
    self.layer.borderColor = boarderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

@end

#import "ZYView.h"
IB_DESIGNABLE
@implementation ZYImageView

- (void)setBoarderWith:(CGFloat)boarderWith
{
    _boarderWith = boarderWith;
    self.layer.borderWidth = boarderWith;
}

- (void)setBoarderColor:(UIColor *)boarderColor
{
    _boarderColor = boarderColor;
    self.layer.borderColor = boarderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

@end

#import "ZYView.h"
IB_DESIGNABLE
@implementation ZYButton

- (void)setBoarderWith:(CGFloat)boarderWith
{
    _boarderWith = boarderWith;
    self.layer.borderWidth = boarderWith;
}

- (void)setBoarderColor:(UIColor *)boarderColor
{
    _boarderColor = boarderColor;
    self.layer.borderColor = boarderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

@end
