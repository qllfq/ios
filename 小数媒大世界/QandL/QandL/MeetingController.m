//
//  MeetingController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "MeetingController.h"

@interface MeetingController ()

@end

@implementation MeetingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"周会";
    CGFloat lastViewH = CGRectGetMaxX(self.lastView.frame) + 10;
    self.scrollView.contentSize = CGSizeMake(0, lastViewH);
    self.scrollView.contentOffset = CGPointMake(0, -40);
    self.scrollView.contentInset = UIEdgeInsetsMake(40, 0, lastViewH+300, 0);
    
    CGRect rect = self.scrollView.frame;
    rect.size.height = 600;
    rect.size.width = self.view.frame.size.width;
    self.scrollView.frame = rect;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
