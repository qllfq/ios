//
//  DynamicController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "DynamicController.h"
#import "NewCell.h"
#import "DetailController.h"
#import "Book.h"
@interface DynamicController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSArray *news;
//@property(nonatomic,strong)NSArray *books;

@end

@implementation DynamicController

-(NSArray *)news{
    if(!_news){
        NSString *path = [[NSBundle mainBundle]pathForResource:@"latest.plist" ofType:nil];
        _news = [NSArray arrayWithContentsOfFile:path];
    }
    return _news;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.tableView.rowHeight = 100;
    self.navigationItem.title = @"动态";

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCell"];
    NSDictionary *dic = self.news[indexPath.row];
    cell.title.text = dic[@"title"];
    cell.reader.text = dic[@"reader"];
    
   // cell.comment.text = [NSString stringWithFormat:@"评论：%@",dic[@"comments"]];
    cell.icon.image = [UIImage imageNamed:dic[@"icon"]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(NSArray *)books{
//    if(!_books){
//        _books = [Book books];
//    }
//    return _books;
//}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"two" sender:self];
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    UIViewController *vc = segue.destinationViewController;
    
    NSLog(@"%@",[segue.destinationViewController class]);
    
    if ([vc isKindOfClass:[DetailController class]]) {
        DetailController *detailVc = (DetailController *)vc;
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
//        Book *book = self.news[path.row];
        Book *book = [Book bookWithDict:self.news[path.row]];
        NSLog(@"%@",book.title);
        detailVc.book = book;
    }}


@end
