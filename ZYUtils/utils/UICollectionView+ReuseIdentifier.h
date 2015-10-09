//
//  UICollectionView+ReuseIdentifier.h
//  BYBeautyTips
//
//  Created by Lik on 15/1/16.
//  Copyright (c) 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (ReuseIdentifier)

- (void)registerNibForCellWithClassName:(Class)class;
- (void)registerClassForCellWithClassName:(Class)class;
- (id)dequeueReusableCellWithClass:(Class)class forIndexPath:(NSIndexPath*)indexPath;

- (void)registerNibForCellWithClassName:(Class)class forSupplementaryViewOfKind:(NSString *)elementKind;
- (void)registerCellWithClassName:(Class)class forSupplementaryViewOfKind:(NSString *)elementKind;
- (id)dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withClass:(Class)class forIndexPath:(NSIndexPath *)indexPath;

@end
