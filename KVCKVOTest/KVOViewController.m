//
//  KVOViewController.m
//  KVCKVOTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "KVOViewController.h"

@interface KVOViewController ()

@end

@implementation KVOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    [self KVOTest];
    
}
/**
 KVO==键值观察者
 只有通过打点调用或对象调方法才可以响应kvo的监听方法
 */
//PS:当前类对象释放的时候记得要把KVO移除===[self removeObserver:self forKeyPath:@"p"];
-(void)KVOTest
{
    /*
     [self addObserver:self forKeyPath:@"p" options:NSKeyValueObservingOptionNew context:nil];
     参数1：addObserver==监听者是谁
     参数2：forKeyPath==被监听者是谁
     参数3：options==监听什么
     参数4：context==上下文，环境==一般填nil
     */
    [self addObserver:self forKeyPath:@"p" options:NSKeyValueObservingOptionNew context:nil];
}
/**
 监听成功后会调用的方法
  参数1：键
  参数2：对象
  参数3：监听到的内容
  参数4：用来设置传值对象
 */
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    NSLog(@"===%@",change);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.p=[[People alloc]init];
    
//    self.p.name=@"454546";
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
