//
//  User.h
//  sigtonDemo
//
//  Created by el1ven on 14-3-10.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCopying>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *email;

+(id)shareUser;

@end
