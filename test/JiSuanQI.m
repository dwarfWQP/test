//
//  JiSuanQI.m
//  test
//
//  Created by xxfwangqp on 2018/8/29.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import "JiSuanQI.h"

@implementation JiSuanQI

- (JiSuanQI * (^)(float))add{
    return ^(float value){
        _reslut += value;
        return self;
    };
}

- (JiSuanQI * (^)(float))deletes{
    return ^(float value){
        _reslut -= value;
        return self;
    };
}

@end
