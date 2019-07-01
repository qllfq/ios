//
//  TimeController.h
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSMutableArray *groups;
@property(nonatomic,strong)NSMutableArray *first;
@property(nonatomic,strong)NSMutableArray *second;
@property(nonatomic,strong)NSMutableArray *third;

//@property(nonatomic ,strong) NSString *path;
- (IBAction)selectchange:(id)sender;
-(NSArray *)chooseGroup:(NSString *) plistPath;

@end
