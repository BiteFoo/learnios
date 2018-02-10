//
//  ViewController.m
//  hello
//
//  Created by papi on 23/01/2018.
//  Copyright © 2018 papi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic)IBOutlet UIButton *btnClick;
@property (weak, nonatomic) IBOutlet UILabel *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* clzzName=@"ViewController";
    NSString* msg =@"calling alpha class";
    int idx =0x007;
    Alpha* alpha = [[Alpha alloc ]init];
    [alpha initMyAlpha:clzzName:msg:idx];
    
    NSString* dosomething=@"kill self ??";
    [alpha doSomething:dosomething];
    int value = [alpha getIdx];

    NSLog(@"value =%d",value);
    NSLog(@"Helllo world  IOS ! + msg =%@",[alpha getMsg]);
    
    //UILabel *lable =[Label:initstate(10,"hello" ,10)];
    for(int i=0;i<1000;++i)
    {
        if(i ==10)
        {
            break;
        }
        NSLog(@"i=%d",i);
    }
    
    NSLog(@"Have fun with start learning Obejct-C programming !!!!");
    //需要在这里释放掉泪对象内存
}

- (IBAction)showClickLog:(id)sender {
   static int count=0;
    
    NSLog(@"show click btn ,count=%d",count);
    count++;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"didReceiveMemoryWarning ");
}


// ad

@end
