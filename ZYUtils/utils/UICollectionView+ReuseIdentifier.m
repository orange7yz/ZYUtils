//
//  UICollectionView+ReuseIdentifier.m
//  BYBeautyTips
//
//  Created by Lik on 15/1/16.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "UICollectionView+ReuseIdentifier.h"

@implementation UICollectionView (ReuseIdentifier)

- (void)registerNibForCellWithClassName:(Class)class
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass(class)];
}

- (void)registerClassForCellWithClassName:(Class)class
{
    [self registerClass:class forCellWithReuseIdentifier:NSStringFromClass(class)];
}

- (id)dequeueReusableCellWithClass:(Class)class forIndexPath:(NSIndexPath*)indexPath
{
    id cell = [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    
    return cell;
}

- (void)registerNibForCellWithClassName:(Class)class forSupplementaryViewOfKind:(NSString *)elementKind
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forSupplementaryViewOfKind:elementKind withReuseIdentifier:NSStringFromClass(class)];
}

- (void)registerCellWithClassName:(Class)class forSupplementaryViewOfKind:(NSString *)elementKind
{
    [self registerClass:class forSupplementaryViewOfKind:elementKind withReuseIdentifier:NSStringFromClass(class)];
}

- (id)dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withClass:(Class)class forIndexPath:(NSIndexPath *)indexPath
{
    id cell = [self dequeueReusableSupplementaryViewOfKind:elementKind withReuseIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    return cell;
}

@end
