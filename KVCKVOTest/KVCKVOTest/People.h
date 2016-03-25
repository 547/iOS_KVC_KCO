//
//  People.h
//  KVCKVOTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface People : NSObject
{
    NSString *name;
    Dog *dogN;
}
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)Dog *dog;
@end
