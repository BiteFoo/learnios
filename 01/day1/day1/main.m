//
//  main.m
//  day1
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
//实例化对象方法的调用 用 -（类型）方法名：（参数类型）参数名  方法名：（参数类型）参数名
// - 表示为对象方法
//静态方法的 + （类型） 方法名：（参数类型）参数名 方法名：（参数类型）参数名
//+ 静态方法 直接通过类名的方式调用

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        People *p1=[[People alloc]init];//
        NSLog(@"p1=%@",p1.name); //这里是对象访问 属性和成员变量的方式，通过点的方式来访问属性，成员变量使用->来访问
        [p1 showMsg ]; //调用方式 老是写称为p1.showMsg 不能这样调用方法
    //        [p1.getName];
//        [p1.showMsg];
        NSString* className=[p1 getName];
        int age =[p1 getAge];
        NSLog(@"className=%@ , age =%d",className,age);//这里要使用OC的字符串对象，
        //调用实例对象的方法showWith: :    方法
        [p1 showWithA:10 :30];
        // call static method
        [People showWithA:10 andB:20];//调用静态方法
        
        
        
    }
    return 0;
}
