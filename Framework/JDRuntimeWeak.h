//
//  JDRuntimeWeak.h
//  JDRuntimeWeak
//
//  Created by 王金东 on 2016/7/21.
//  Copyright © 2016年 王金东. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDRuntimeWeak : NSObject

+ (instancetype)weakObject:(id)obj;

- (instancetype)initWithObject:(id)obj;
- (id)obj;

@end
