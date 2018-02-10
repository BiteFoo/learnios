//
//  People.m
//  day1
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//


#import "People.h"
//成员变量，只能在内部使用，类属性可以被外部调用
@implementation People :NSObject
//使得成员变量和属性有着对应关系
// 《新版本中，可以不用，也能访问到内部成员变量》
//@synthesize name=_name; //这样声明后，即可通过外部的方式，访问到内部的成员变量
//新版本的ios SDK 可以不用声明@synthesize ，会根据属性自动生成_xxx对应的成员比变量

//empty constructor method
- (instancetype)init
{
    self = [super init];
    if (self) {
        _name=@"IOS";
        _age=22;
    }
    return self;
}
// instance method
-(void)showMsg{
    NSLog(@"instance of People ,method Name showMsg");
}
// instance method
-(int)getAge{
    return _age;
}
// instance method
-(NSString *)getName{
    return _name;
}
// instance method
-(void)showWithA:(int)a :(int)b{
    int c = a+b;
    NSLog(@"instance of People showWithA , a+b =%d",c);
}
// static method
+(void)showWithA:(int)a andB:(int)b{
    int result = a+b;
    NSLog(@"static metho showWithA: andB:  result =%d",result);
}


@end
