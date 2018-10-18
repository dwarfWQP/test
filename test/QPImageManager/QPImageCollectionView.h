//
//  QPImageCollectionView.h
//  test
//
//  Created by xxfwangqp on 2018/7/24.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QPImageCollectionView : UIView

/**
 每行row的个数  默认 4
 */
@property (nonatomic, assign) NSInteger rowCount;

/**
 row与row之间的距离 默认 10
 */
@property (nonatomic, assign) NSInteger kMagin;

/**
 最小行间距 默认10
 */
@property (nonatomic, assign) NSInteger minimumLineSpacingInt;

/**
 最小item间距 默认10
 */
@property (nonatomic, assign) NSInteger minimuminterItemInt;

@end
