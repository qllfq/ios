//
//  TeacherController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "TeacherController.h"

@interface TeacherController ()

@end

@implementation TeacherController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"数媒园丁";

    CGFloat lastViewH = CGRectGetMaxX(self.lastView.frame) + 10;
    self.scrollView.contentSize = CGSizeMake(0, lastViewH);
    self.scrollView.contentOffset = CGPointMake(0, -40);
    self.scrollView.contentInset = UIEdgeInsetsMake(20, 0, lastViewH+300, 0);
    
    CGRect rect = self.scrollView.frame;
   // rect.size.height = 600;
    rect.size.width = self.view.frame.size.width;
    self.scrollView.frame = rect;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
