//
//  KVOViewController.h
//  KVCKVOTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
@interface KVOViewController : UIViewController
@property(nonatomic,copy)NSString *string;
@property(nonatomic,strong)People *p;
@end
