//
//  DetailController.h
//  QandL
//
//  Created by 123 on 2019/6/1.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"
@interface DetailController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UITextView *content;
@property(nonatomic,strong)Book *book;
@end
