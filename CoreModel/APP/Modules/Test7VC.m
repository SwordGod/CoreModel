//
//  Test7VC.m
//  CoreModel
//
//  Created by 冯成林 on 15/9/9.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "Test7VC.h"

@interface Test7VC ()

@end

@implementation Test7VC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    Person *p1 = [[Person alloc] init];
    p1.hostID = 2;
    p1.name = @"杰克";
    p1.age = 25;
    p1.height = 180;
    
    Person *p2 = [[Person alloc] init];
    p2.hostID = 3;
    p2.name = @"吉姆";
    p2.age = 22;
    p2.height = 172;
    
    
    [Person updateModels:@[p1,p2] resBlock:^(BOOL res) {
        [self show:res];
    }];
    
    
}



@end
