//
//  NSObject+runtime_weak.m
//  JDRuntimeWeak
//
//  Created by 王金东 on 2017/7/21.
//  Copyright © 2017年 王金东. All rights reserved.
//

#import "NSObject+runtime_weak.h"
#import <objc/runtime.h>
#import "JDRuntimeWeak.h"

static const void* test_key = &test_key;

@implementation NSObject (runtime_weak)

- (void)setDelegate:(id)delegate {
    objc_setAssociatedObject(self, test_key, [JDRuntimeWeak weakObject:delegate], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)delegate {
    JDRuntimeWeak *_weakObject = objc_getAssociatedObject(self, test_key);
    return [_weakObject obj];
}

@end
