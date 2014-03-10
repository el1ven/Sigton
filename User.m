//
//  User.m
//  sigtonDemo
//
//  Created by el1ven on 14-3-10.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "User.h"

static User *sigton = nil;//静态对象实例

@implementation User

+(id)shareUser{
    
    @synchronized(self){//同步锁，线程保护，只有一个线程可以进入代码
    if(sigton == nil){
        sigton = [[[self class]alloc]init];
    }
    }
    return sigton;
    
}

//----------下面的方法确保只创建一个实例--------------------------
+ (id)allocWithZone:(struct _NSZone *)zone{//覆盖方法
    
    if(sigton == nil){
        sigton = [super allocWithZone:zone];
    }
    return sigton;
}

- (id)copyWithZone:(NSZone *)zone{
    return sigton;
}

@end
























