//
//  UITableView+ReuseIdentifier.h
//  BYBeautyTips
//
//  Created by Lik on 15/1/18.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (ReuseIdentifier)

- (void)registerNibForCellWithClassName:(Class)class;
- (void)registerClassForCellWithClassName:(Class)class;
- (id)dequeueReusableCellWithClass:(Class)class forIndexPath:(NSIndexPath*)indexPath;
- (id)dequeueReusableCellWithClass:(Class)class;

@end
