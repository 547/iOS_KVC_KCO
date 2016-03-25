//
//  ViewController.m
//  KVCKVOTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self KVCTest];
}
/**
 通过KVC进行赋值的时候首先去查找有没有对应forKey的属性如果就直接赋值
 如果没有就会找有没有对应forKey的全局变量如果有就赋值
 如果上述两者都不存在那么就会调用forUndefinedKey方法进行传值
 如果都没有就会崩掉
 
 
 //id 遍历不出来的时候会调用forUndefinedKey方法
 根据以上的特性在做JSON解析的时候处理id可以在重写forUndefinedKey方法中解决：
 -(void)setValue:(id)value forUndefinedKey:(NSString *)key
 {
 
 if ([key isEqualToString:@"id"])
 {
 _newid =(NSString *)value;//直接赋值
 }
 }

 */
/**
 KVCkey
 kvc在取值的时候先取get方法里面的值
 没有get方法那么找全局变量拿值
 如果上述两者都不存在则会去找valueForUndefinedKey拿值
 崩溃掉
 */
/**
 如果牵扯到多层的KVC赋值一定要确保每一层的对象都是真实存在的
 */
-(void)KVCTest
{
    _p=[[People alloc]init];
//    p.dog=[[Dog alloc]init];
    //在为对象用KVC赋值的时候直接赋值是会崩溃的==调用方法，[kvc优先匹配和forkey一样的全局变量，一旦匹配不成功才会去调用forUndefinedKey方法,方法没有回崩溃]
    [_p setValue:@"1223" forKey:@"name"];//设置值
    [_p setValue:@122 forKey:@"age"];
    [_p.dog setValue:@"red" forKeyPath:@"color"];
    NSLog(@"%@===",[_p.dog valueForKey:@"color"]);//取值
    [_p setValue:@"blue" forKeyPath:@"dog.color"];
    [_p setValue:@"鱼骨" forKeyPath:@"dog.bone"];
    NSLog(@"%@===",[_p valueForKeyPath:@"dog.color"]);
     NSLog(@"%@===",[_p valueForKeyPath:@"dog.bone"]);
    
//    [p setValue:@"black" forKeyPath:@"dogN.color"];
//    [p setValue:@"脆骨" forKeyPath:@"dogN.bone"];
//    NSLog(@"%@===",[p valueForKeyPath:@"dogN.color"]);
//    NSLog(@"%@===",[p valueForKeyPath:@"dogN.bone"]);
}










-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self presentViewController:[[KVOViewController alloc]init] animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
