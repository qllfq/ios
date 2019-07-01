//
//  PersonGroup.h
//  QandL
//
//  Created by 123 on 2019/5/31.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonGroup : NSObject
@property(nonatomic,copy)NSString *number;
@property(nonatomic,strong)NSArray *data;
-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)groupWithDict:(NSDictionary *)dict;
@end
