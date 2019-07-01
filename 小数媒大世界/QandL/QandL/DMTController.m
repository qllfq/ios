//
//  DMTController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "DMTController.h"

@interface DMTController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property(nonatomic,strong)NSTimer *timer;
@end

@implementation DMTController

- (instancetype)init{
    if (self = [super init]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"DMT312";

    self.scroll.backgroundColor = [UIColor whiteColor];
    [self.view bringSubviewToFront:self.scroll];
    int count = 3;
    CGFloat imageY = 0;
      // self.scroll.delegate = self;
    CGFloat imageW = self.scroll.frame.size.width;
    CGFloat imageH = self.scroll.frame.size.height;
    for (int i=0; i<count; i++) {
        //UIImageView *imageView
        UIImageView *imageView = [[UIImageView alloc] init];
        CGFloat imageX = i * imageW;
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        NSString *imageName = [NSString stringWithFormat:@"img_0%d",i+1];
        imageView.image = [UIImage imageNamed:imageName];
        [self.scroll addSubview:imageView];
    }
    
    
    CGFloat contentW = count * imageW;
    self.scroll.contentSize = CGSizeMake(contentW, 80);
    self.pageControl.numberOfPages = count;
    self.scroll.pagingEnabled = YES;
    [self addTimer];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollW = scrollView.frame.size.width;
    //根据内容滚动的偏移量加上屏幕宽度的一半对屏幕宽度取余来决定显示第几页
    int page = (scrollView.contentOffset.x+scrollW*0.5)/scrollW;
    self.pageControl.currentPage = page;
}

-(void)addTimer{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

-(void)removeTimer{
    [self.timer invalidate];
    self.timer = nil;
}

-(void)nextImage{
    int count = 3;
    int page = 0;
    if(self.pageControl.currentPage == count - 1){
        page = 0;
        
    }else{
        page = self.pageControl.currentPage + 1;
    }
    CGFloat offsetX = page * self.scroll.frame.size.width;
    CGPoint offset = CGPointMake(offsetX, 0);
    [self.scroll setContentOffset:offset animated:YES];
   
}
-(void)scroViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollW = scrollView.frame.size.width;
    int page = (scrollView.contentOffset.x+scrollW*0.5)/scrollW;
    self.pageControl.currentPage = page;
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self removeTimer];
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}


@end

