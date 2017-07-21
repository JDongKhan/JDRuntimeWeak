//
//  JDRuntimeWeak.m
//  JDRuntimeWeak
//
//  Created by 王金东 on 2016/7/21.
//  Copyright © 2016年 王金东. All rights reserved.
//

#import "JDRuntimeWeak.h"

@implementation JDRuntimeWeak{
    __weak id _obj;
}

+ (instancetype)weakObject:(id)obj {
    return [[JDRuntimeWeak alloc] initWithObject:obj];
}

- (instancetype)initWithObject:(id)obj {
    if (self = [super init]) {
        _obj = obj;
    }
    return self;
}

- (id)obj {
    return _obj;
}


@end
