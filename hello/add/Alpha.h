//
//  Alpha.h
//  hello
//
//  Created by papi on 25/01/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Alpha : NSObject
{
    // field was defined here
    NSString* classname;
    NSString* msg;
    int idx;
    
}
//method was here

//added construtor

-(Alpha*) initMyAlpha:(NSString*) clzzName:(NSString*) paramsg:(int)idx;

// function
-(void) doSomething:(NSString*)toast;   // added dosomething  // void method
// getter
-(NSString*) getMsg; // added getMsg  // return value method
-(NSString*) getClassName:(NSString*)classname;  // return value method and has parameters
-(int) getIdx;
// setter
-(void) setIdx:(int) idx;
-(void) setClassName:(NSString*) clazzName;
-(void)  setMsg:(NSString*)msg;
@end
