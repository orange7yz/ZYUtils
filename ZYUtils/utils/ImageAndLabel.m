//
//  ImageAndLabel.m
//  ZYUtils
//
//  Created by yongzhang on 15/10/23.
//  Copyright © 2015年 yongzhang. All rights reserved.
//

#import "ImageAndLabel.h"
#import "UIView+Utils.h"

@interface ImageAndLabel()

@property (nonatomic, weak)   id      target;
@property (nonatomic, assign) SEL     selector;
@property (nonatomic, assign) CGFloat imageViewWidth;
@property (nonatomic, assign) CGFloat imageRatio;

@end

@implementation ImageAndLabel

- (id _Nullable)initWithWidth:(CGFloat)imageViewWidth imageRatio:(CGFloat)imageRatio
{
    CGFloat height = imageViewWidth * imageRatio + 26;
    self = [self initWithFrame:CGRectMake(0, 0, imageViewWidth, height)];
    if(self) {
        _imageViewWidth = imageViewWidth;
        _imageRatio = imageRatio;
        _distance = 6;
    }
    return self;
}


- (void)didMoveToSuperview
{
    if(self.superview) {
        __weak ImageAndLabel *weakSelf = self;
        [self setTapActionWithBlock:^{
            if([weakSelf.target respondsToSelector:weakSelf.selector]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                [weakSelf.target performSelector:weakSelf.selector withObject:weakSelf];
#pragma clang diagnostic pop
            }
        }];
        
        [self addSubview:self.imageView];
        [self addSubview:self.tipLabel];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.height = self.imageViewWidth * self.imageRatio + 20 + self.distance;
    self.imageView.frame = CGRectMake(0, 0, self.imageViewWidth, self.imageViewWidth * self.imageRatio);
    self.tipLabel.frame = CGRectMake(0, self.imageViewWidth * self.imageRatio + self.distance, self.imageViewWidth, 20);
}

- (void)addTarget:(id)target action:(nonnull SEL)action {
    self.target = target;
    self.selector = action;
}

- (UIImageView *)imageView
{
    if(!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _imageView;
}

- (UILabel *)tipLabel
{
    if(!_tipLabel) {
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tipLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _tipLabel;
}

@end
