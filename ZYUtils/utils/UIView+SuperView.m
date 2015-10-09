//
//  UIView+SuperView.m
//  BYBeautyTips
//
//  Created by Lik on 15/3/19.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "UIView+SuperView.h"

@implementation UIView (SuperView)

- (UIView *)findSuperViewWithClass:(Class)superViewClass {
    
    UIView *superView = self.superview;
    UIView *foundSuperView = nil;
    
    while (nil != superView && nil == foundSuperView) {
        if ([superView isKindOfClass:superViewClass]) {
            foundSuperView = superView;
        } else {
            superView = superView.superview;
        }
    }
    return foundSuperView;
}

@end
