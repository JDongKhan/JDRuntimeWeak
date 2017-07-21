//
//  NSObject+runtime_weak.h
//  JDRuntimeWeak
//
//  Created by 王金东 on 2017/7/21.
//  Copyright © 2017年 王金东. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (runtime_weak)

@property (nonatomic,weak) id delegate;

@end
