//
//  Person.h
//  QandL
//
//  Created by 123 on 2019/5/31.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *time;
@property(nonatomic,copy) NSString *icon;

+(instancetype)carWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
@end
