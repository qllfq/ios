//
//  Person.m
//  QandL
//
//  Created by 123 on 2019/5/31.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self=[super init]){
        //        self.name = dict[@"name"];
        //        self.icon = dict[@"icon"];
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)carWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}
@end
