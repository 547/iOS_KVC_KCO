//
//  People.m
//  KVCKVOTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "People.h"

@implementation People
{
    int age;
}

/**在使用KVC进行赋值的时候如果不书写该方法那么会崩溃*/
//-(void)setValue:(id)value forKey:(NSString *)key
//{
//    NSLog(@"---%@----%@",key,value);
//}
//-(void)setValue:(id)value forUndefinedKey:(NSString *)key
//{
//    NSLog(@"---%@----%@",key,value);
//    
//}
@end
