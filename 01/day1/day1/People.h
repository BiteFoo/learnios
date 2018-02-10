//
//  People.h
//  day1
//
//  Created by papi on 09/02/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import <Foundation/Foundation.h>

//如何识别方法
//去掉方法的返回类型，去掉方法参数类型，去掉参数名，剩下的即是方法，
@interface People : NSObject
{
    //类的成员变量，只能在内部使用
    //NSString* _name;  //新版本可以不用在头文件中声明成员变量，程序可自行根据属性自行生成对应的成员变量
    int _age;
    char sex;
    
}
//成员属性，提供给外部访问 ，外部通过对象实例访问内部的参数name
@property (nonatomic,strong)NSString *name;
-(void)showMsg;//no returnValue method 没有返回值
-(int)getAge;//has returnValue method 又返回值
-(void)showMsg:(NSString*)msg;// 有参数方法
-(NSString*)getName;//返回一个OC的String对象
// 方法为 showWithA:  :    // 这里又一个方法的名称是空的
-(void) showWithA:(int)a :(int)b; //多个参数
//方法为 showWithA:  andB:
+(void)showWithA:(int)a andB:(int)b;//静态方法
+(int) :(int)a  :(int)b; //这里的方法为 ： ：
@end


