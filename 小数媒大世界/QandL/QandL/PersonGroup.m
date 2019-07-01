
//
//  PersonGroup.m
//  QandL
//
//  Created by 123 on 2019/5/31.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "PersonGroup.h"
#import "Person.h"
@implementation PersonGroup
-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self=[super init]){
        self.number = dict[@"number"];
        NSArray *arr = dict[@"data"];
        NSMutableArray *carsArry = [NSMutableArray array];
        for (NSDictionary *dict in arr) {
            Person *person = [Person carWithDict:dict];
            [carsArry addObject:person];
        }
        self.data = carsArry;
    }
    return self;
}

+(instancetype)groupWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}

@end
