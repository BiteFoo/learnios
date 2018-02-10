##  关于使用OC的类继承属性
1、成员变量存在访问修饰符 ：
@public  子类可以继承和使用，可以提供给外部使用
@protected 子类可以继承和使用，外部不能访问 ，默认值就是@protected作为修饰
@private   子类不能访问和继承，外部不能访问
### 这里不是很懂，感觉有点像java的外部库导入项目才能被使用
@package  框架使用，只有在框架内才能被继承和使用，离开框架就不能被访问和继承使用


2、OC中指存在父类方法的重写，不支持方法重载 ，这里和java不一样

3、成员属性 ： 功能-》提供给外部访问内部成员变量
通过@property来标注，例如
@property(readonly)int age;
这里表示age只能被读取，不能写入
@property ：功能类似于setXXX(...) getXXXX(...) 等价于setter和getter方法
新版本的IOS SDK中，可以在声明了属性后，在初始化方法中会自动创建对应的成员属性，
，例如

实现
@interface MyClass :NSObject
//声明成员变量
{
    NSString* _name;//推荐使用下划线的方式命名 ，这里的_name不能被外部访问
}
//声明属性
@property (nonatomic,strong)NSString* name;//提供给外部访问成员变量的接口
@end

### 如何将成员变量和属性做个对应关系

## OC中的方法
#### 方法定义
无参数方法
-（方法返回值类型）方法名
有参数方法
-（方法返回值类型）方法名1 :(参数类型)参数名1  空格  方法名2:(参数类型)参数名2

## 如何识别方法：
从 -号开始，去掉方法返回值类型 ，再去掉参数类型和参数名，剩下的就是方法名 ，例如

-(void)show; //这里的方法名是 show:
-(int)add:(int)a addB:(int)b //这里的方法名是 add:  addB:
还存在一种方式
-(void):(int)a  :(int)b; //对于这样的，方法名为 :   :

那么，我们可以在一个方法传递多个参数的时候，进行如下定义
-(void)add:(int)a  :(int)b  :(int)c;//这里在被调用的时候 ，就能直接通过add来调用
[instance  add:10 :20 :30];


## 类对象初始化
初始化方法 init 是继承自NSObject 对象而来
初始化方式
-(instancetype)init{
        self =[super init];
        if(self)
{
    //在这里初始化参数
    }
    return self;//返回当前类
    }
如果要自定义初始化方法，注意需要使用initXXXX的方法，需要使用init作为开头，否则会在调用自定义初始化的时候失败
-initMyXXXX

## 方法调用关系
1、成员方法（实例化方法）
需要实例化对像才能调用 ，这里用减号表示  -
2、类方法（静态方法）
可以通过类名的方式调用，这里用加号表示  +， 如下

@interface MyClass : NSObject

-(void)hello;//表示实例方法
+(void)print;//表示类方法，静态方法

@end

## 如何调用
使用[]调用，例如调用实例化对像
Foo *foo=[[Foo alloc] init];
这里需要注意，实例化对象的时候，首先调用alloc方法，这个方法是一个静态方法，先给Foo分配内存

init方法，是一个实例方法，这里是初始化分配好的内存



