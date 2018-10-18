//
//  QPImageCollectionView.m
//  test
//
//  Created by xxfwangqp on 2018/7/24.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import "QPImageCollectionView.h"

#define KScreenWidth [UIScreen mainScreen].bounds.size.width

@interface QPImageCollectionView () <
UICollectionViewDelegate,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation QPImageCollectionView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.kMagin = 10;
        self.rowCount = 4;
        self.minimuminterItemInt = 10;
        self.minimumLineSpacingInt = 10;
        [self initView];
    }
    return self;
}

- (void)initView{
    [self addSubview:self.collectionView];
}

#pragma mark - get
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        //自动网格布局
        UICollectionViewFlowLayout *flowLayOut = [[UICollectionViewFlowLayout alloc] init];
        //cell的大小
        CGFloat itemWidth = (KScreenWidth - ((_rowCount + 1) * _kMagin)) / _rowCount;
        flowLayOut.itemSize = CGSizeMake(itemWidth, itemWidth);
        //最小行间距
        flowLayOut.minimumLineSpacing = _minimumLineSpacingInt;
        //item最小间距
        flowLayOut.minimumInteritemSpacing = _minimuminterItemInt;
        //设置section的内边距
        flowLayOut.sectionInset = UIEdgeInsetsMake(_kMagin, _kMagin, _kMagin, _kMagin);
        flowLayOut.scrollDirection = UICollectionViewScrollDirectionVertical;
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayOut];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        
    }
    return _collectionView;
}

@end
