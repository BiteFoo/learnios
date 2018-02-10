//
//  Sub1.m
//  day2
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import "Sub1.h"

@implementation Sub1

//这里重写父类的初始化方法，修改name为当前的类名，同时修改掉age
-(instancetype)init{
    self =[super init];
    
    if(self)
    {
        _name=@"Sub1 class";
        _age =22;
//        _msg =@""; //不能访问到msg
    }
    return self;
}

@end
