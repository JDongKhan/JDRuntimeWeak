//
//  ViewController.m
//  JDRuntimeWeak
//
//  Created by 王金东 on 2017/7/21.
//  Copyright © 2017年 王金东. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+runtime_weak.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.delegate  = self;
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"111");
        
        // 2秒后异步执行这里的代码...
        
    });
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)p {
    NSLog(@"1111");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"dealloc");
}

@end
