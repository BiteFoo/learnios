//
//  Foo.m
//  day2
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//

//父类

#import "Foo.h"

@implementation Foo : NSObject

-(instancetype)init{
    self=[super init];
    if(self)
    {
        _age=20;//可以提供给子类修改
        _name=@"Foo class ";//可以提供给子类修改
        _msg=@"call Foo init method ";//这里我们保证每次都能打印这句话，不能被修改
    }
    NSLog(@"%@",_msg); //保证每次父类的构造函数被调用
    return self;
}

-(void)showInfo{
    
    NSLog(@" className=%@ ,age = %d",_name,_age);
}
@end
