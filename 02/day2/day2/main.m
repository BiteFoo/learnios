//
//  main.m
//  day2
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//
//OC的对象继承测试
#import <Foundation/Foundation.h>
#import "Sub1.h"
#import "Sub2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        Sub1 *sub1 = [[Sub1 alloc]init];
        [sub1 showInfo];
        Sub2 *sub2 =[[Sub2 alloc] init];
        [sub2 showInfo];
        
        //通过父类声明，实例化子类对象
        Foo *sub3 =[[Sub1 alloc] init];
        [sub3 showInfo];
        
    }
    return 0;
}
