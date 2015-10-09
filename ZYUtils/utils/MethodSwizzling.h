//
//  MethodSwizzling.h
//  BYBeautyTips
//
//  Created by Lik on 15/4/10.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MethodSwizzling : NSObject

void swizzleMethod(Class class, SEL originalSelector, SEL swizzledSelector);

@end
