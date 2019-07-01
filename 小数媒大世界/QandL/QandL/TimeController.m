//
//  TimeController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "TimeController.h"
#import "Person.h"
#import "PersonGroup.h"
@interface TimeController ()<UITableViewDataSource>

@end

@implementation TimeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableview.rowHeight = 60;
    
    self.groups = [self first];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSMutableArray *)groups{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    
    return _groups;
}


-(NSMutableArray *)first{
    if (_first==nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"time.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempGroup = [NSMutableArray array];
        for(NSDictionary *dict in dictArray){
            PersonGroup *group = [PersonGroup groupWithDict:dict];
            [tempGroup addObject:group];
        }

       _first = tempGroup;

    }
    return _first;
}

-(NSMutableArray *)second{
    if (_second==nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"second.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempGroup = [NSMutableArray array];
        for(NSDictionary *dict in dictArray){
            PersonGroup *group = [PersonGroup groupWithDict:dict];
            [tempGroup addObject:group];
        }
        
        _second = tempGroup;
        
    }
    return _second;
}


-(NSMutableArray *)third{
    if (_third==nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"third.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempGroup = [NSMutableArray array];
        for(NSDictionary *dict in dictArray){
            PersonGroup *group = [PersonGroup groupWithDict:dict];
            [tempGroup addObject:group];
        }
        
        _third = tempGroup;
        
    }
    return _third;
}

- (IBAction)selectchange:(id)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.groups = self.first;
            break;
        case 1:
         self.groups = self.second;
            break;
        case 2:
            self.groups = self.third;
            break;
        default:
            break;
    }
    
    [self.tableview reloadData];
    [self.tableview layoutIfNeeded];
    
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
   // if (self.searchbar.text.length==0) {
        return self.groups.count;
   // }else{
        //return 1;
    //}
    
}

//设置表视图中每组的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //if (self.searchbar.text.length==0) {
        PersonGroup *group = self.groups[section];
        return group.data.count;
   // }else{
      //  return self.carFilterArray.count;
   // }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"car";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    
    
  //  if (self.searchbar.text.length==0) {
        PersonGroup *cargroup = self.groups[indexPath.section];
        Person *car = cargroup.data[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:car.icon];
        cell.textLabel.text = car.name;
    int min = arc4random() % 1000;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",min];
   // }else{
//        Person *car1 = self.carFilterArray[indexPath.row];
//        cell.imageView.image = [UIImage imageNamed:car1.icon];
//        cell.textLabel.text = car1.name;
   // }
    
    
    return cell;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //if (self.searchbar.text.length==0) {
        PersonGroup *group = self.groups[section];
        return group.number;
//    }else{
//        return nil;
//    }
    
}

@end
