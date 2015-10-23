//
//  ArrayDataSource.m
//  BYBeautyTips
//
//  Created by Lik on 14/11/24.
//  Copyright (c) 2014年 杭州贝宇网络有限公司. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource()

@property (nonatomic, copy) CellIdentifierBlock cellIdentifier;
@property (nonatomic, copy) CellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

- (id)initWithCellIdentifier:(CellIdentifierBlock)aCellIdentifier
          configureCellBlock:(CellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    if (self) {
        self.items = [[NSMutableArray alloc] init];
        self.cellIdentifier = [aCellIdentifier copy];
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}

- (void)addItems:(NSArray *)items
{
    if (!items || ![items isKindOfClass:[NSArray class]]) {
        return;
    }
    
    [self.items addObjectsFromArray:items];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    NSAssert(indexPath.row<=self.items.count, @"ArrayDataSource: indexPath.row>self.items.count");
    return self.items[(NSUInteger) indexPath.row];
}

- (NSMutableArray *)items
{
    if (!_items) {
        _items = [[NSMutableArray alloc] init];
    }
    return _items;
}

#pragma mark <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier(indexPath) forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier(indexPath) forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

@end
