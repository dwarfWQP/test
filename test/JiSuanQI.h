//
//  JiSuanQI.h
//  test
//
//  Created by xxfwangqp on 2018/8/29.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JiSuanQI : NSObject {
    @public
    NSInteger _age;
}

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign) float reslut;

- (JiSuanQI *(^)(float))add;

- (JiSuanQI *(^)(float))deletes;

@end
