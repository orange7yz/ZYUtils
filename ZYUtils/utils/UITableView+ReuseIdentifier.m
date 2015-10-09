//
//  UITableView+ReuseIdentifier.m
//  BYBeautyTips
//
//  Created by Lik on 15/1/18.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "UITableView+ReuseIdentifier.h"

@implementation UITableView (ReuseIdentifier)

- (void)registerNibForCellWithClassName:(Class)class
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forCellReuseIdentifier:NSStringFromClass(class)];
}

- (void)registerClassForCellWithClassName:(Class)class
{
    [self registerClass:class forCellReuseIdentifier:NSStringFromClass(class)];
}

- (id)dequeueReusableCellWithClass:(Class)class
{
    id cell = [self dequeueReusableCellWithIdentifier:NSStringFromClass(class)];
    if (!cell) {
        [self registerClassForCellWithClassName:class];
        return [self dequeueReusableCellWithClass:class];
    }
    return cell;
}

- (id)dequeueReusableCellWithClass:(Class)class forIndexPath:(NSIndexPath*)indexPath
{
    id cell = [self dequeueReusableCellWithIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    if (!cell) {
        [self registerClassForCellWithClassName:class];
        return [self dequeueReusableCellWithClass:class forIndexPath:indexPath];
    }
    return cell;
}

@end
