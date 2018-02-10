//
//  Foo.h
//  day2
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject

{
    //声明类成员，注意，这里声明的成员的默认修饰符尾@protected 表示可以被子类继承和使用，但是不对外提供使用
    NSString *_name; //默认修饰符@protected，外部不能访问
    @public   // 修饰符为@public 可以被子类继承和使用，也可以提供给外部调用
    int _age;
    @private  // 子类不能继承，也不能使用，外部不能使用
    NSString* _msg;
    
}
//声明方法供给子类调用，方法是没有修饰符的，如果不想被子类使用，也不提供给外部使用，
//那么不要在头文件中声明方法，只要在实现文件.m中实现即可，这样子类不能继承和使用，
//外部也不能访问
-(void)showInfo;


@end
