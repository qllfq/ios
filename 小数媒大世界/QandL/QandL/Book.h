//
//  Book.h
//  QandL
//
//  Created by 123 on 2019/6/1.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *content;
@property(nonatomic,copy)NSString *reader;
+(instancetype)bookWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
+(NSArray *)books;

@end
