//
//  Alpha.m
//  hello
//
//  Created by papi on 25/01/2018.
//  Copyright © 2018 papi. All rights reserved.
//


#import "Alpha.h"

@implementation Alpha

//
-(Alpha*) initMyAlpha:(NSString *)clzzName :(NSString *)paramsg :(int)paramidx{
    
    self=[super init]; // in order to call super init method . need fix constructor start with initMethodName:params:..
    
    if(self)
    {
       
        classname =clzzName;
        msg  = paramsg;
        idx = paramidx;
        //如果参数的名称和类的属性名称一样，那么不能识别？？？
        //需要不同的名称才能得到
/**
 
 [self setClassName:clzzName];
 [self setMsg:paramsg];
 [self setIdx:paramidx];
 
 
   */

    }
    
    return self;
}

-(void)doSomething:(NSString*) toast{
    if(toast == NULL)
    {
        NSLog(@"say something ,Big world !");
    }
    
    else{
        NSLog(@"toast is : %@",toast);
    }
    
}
-(void) setIdx:(int)paramIdx{
    self.idx = paramIdx;
}
-(void) setMsg:(NSString *)msg{
    self->msg=msg;
}
-(void) setClassName:(NSString *)clazzName{
    self->classname = clazzName;
}

-(int) getIdx{
    return  idx;
}
-(NSString*) getMsg{
    return msg;
}
// need fill into parameters
-(NSString*) getClassName:(NSString *)paramClassName{
    //return className
    if(paramClassName == nil)
    {
    return @"Alpha";
    }
    return classname;
 
}

@end

