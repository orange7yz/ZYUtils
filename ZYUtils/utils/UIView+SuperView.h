//
//  UIView+SuperView.h
//  BYBeautyTips
//
//  Created by Lik on 15/3/19.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SuperView)

- (UIView *)findSuperViewWithClass:(Class)superViewClass;

@end
