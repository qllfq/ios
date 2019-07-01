//
//  WorkController.m
//  QandL
//
//  Created by 123 on 2019/5/30.
//  Copyright © 2019年 TZZ. All rights reserved.
//

#import "WorkController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
@interface WorkController ()

@end

@implementation WorkController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    }

- (void)playVideo:(NSURL *)url{
    
    
    NSLog(@"%@",url);
    //2.创建带View的播放器（若想适配iOS9.0以下的可以使用MPMoviePlayerViewController【带view】/ MPMoviePlayerController【不带view, ps:#import <MediaPlayer/MediaPlayer.h>）
    AVPlayerViewController *playVC = [[AVPlayerViewController alloc] init];
    
    //3.player基本上什么操作都要使用它
    playVC.player = [AVPlayer playerWithURL:url];
    
    //4.播放视频
    [playVC.player play];
    
    //若想监听视频的操作，设置代理
    //    playVC.delegate = self;
    
    /**
     5.展示播放器有两种方式
     5.1 model出来，可不用编写frame
     5.2 直接展示在当前的view  PS：注意，必须设置frame，否则无法展示
     */
    [self presentViewController:playVC animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)workFirst:(id)sender {
    
    NSString *filePath = @"/Users/ty/Desktop/video/1.mp4";
    
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    [self playVideo:url];
}

- (IBAction)workSecond:(id)sender {
    NSString *filePath = @"/Users/ty/Desktop/video/2.mp4";
    
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    [self playVideo:url];
}

- (IBAction)workThird:(id)sender {
    NSString *filePath = @"/Users/ty/Desktop/video/3.mp4";
    
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    [self playVideo:url];
}

- (IBAction)workForth:(id)sender {
    NSString *filePath = @"/Users/ty/Desktop/video/4.mp4";
    
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    [self playVideo:url];
}
@end












