//
//  ImageAndLabel.h
//  ZYUtils
//
//  Created by yongzhang on 15/10/23.
//  Copyright © 2015年 yongzhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageAndLabel : UIView

@property(nonatomic, strong) UIImageView * _Nonnull imageView;
@property(nonatomic, strong) UILabel     * _Nonnull tipLabel;
@property(nonatomic, assign) CGFloat                distance;

- (id _Nullable)initWithWidth:(CGFloat)imageViewWidth imageRatio:(CGFloat)imageRatio;

- (void)addTarget:(id _Nonnull)target action:(SEL _Nonnull)action;

@end
