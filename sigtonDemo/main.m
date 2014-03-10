//
//  main.m
//  sigtonDemo
//
//  Created by el1ven on 14-3-10.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        //创建单例的基本步骤：
        /*
         1.声明一个对象的静态实例，并初始化为nil
         2.创建一个类的类方法，生成一个该类的实例，当且仅当这个类的实例为nil时
         3.覆盖allocWithZone方法，确保用户在直接分配和初始化对象的时候，不会产生另一个对象
         4.实现NSCopying协议，覆盖release,autorealease,retain,retainCount方法，以确保单例状态
         5.在多线程的环境下，注意使用synchronized关键字，确保静态实例被正确的创建和初始化
         */
        
        User *user1 = [User shareUser];
        User *user2 = [User shareUser];
        User *user3 = [[User alloc]init];
        //打印指针发现全部都一样，都指向一个对象，单例模式创建成功
        
        
        
    }
    return 0;
}

