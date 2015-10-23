//
//  ArrayDataSource.h
//  BYBeautyTips
//
//  Created by Lik on 14/11/24.
//  Copyright (c) 2014年 杭州贝宇网络有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NSString * (^CellIdentifierBlock)(NSIndexPath *index);
typedef void (^CellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject<UITableViewDataSource, UICollectionViewDataSource>

@property (nonatomic, strong) NSMutableArray *items;

- (id)initWithCellIdentifier:(CellIdentifierBlock)aCellIdentifier
 configureCellBlock:(CellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
- (void)addItems:(NSArray *)items;

@end
