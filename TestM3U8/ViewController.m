//
//  ViewController.m
//  TestM3U8
//
//  Created by lanou3g on 14-3-14.
//  Copyright (c) 2014年 lanou3g. All rights reserved.
//

#import "ViewController.h"
#import "M3U8Handler.h"
#import "M3U8Playlist.h"
#import "VideoDownloader.h"
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)praseM3U8Finished:(M3U8Handler*)handler
{
    handler.playlist.uuid = @"moive5";
    VideoDownloader *downloader = [[VideoDownloader alloc]initWithM3U8List:handler.playlist];
    downloader.delegate = self;
    [downloader startDownloadVideo];
}
-(void)videoDownloaderFinished:(VideoDownloader*)request
{
    [request createLocalM3U8file];
    NSLog(@"everything ok");
}
- (IBAction)start:(id)sender {
    
    NSString * str = @"http://v.youku.com/player/getRealM3U8/vid/XMzUwMDU5NDQw/type/video.m3u8";

    
    M3U8Handler *handler = [[M3U8Handler alloc] init];
    handler.delegate = self;
    
    //        m_webView.delegate = nil;
    //解析urlm3u8地址
    [handler praseUrl:str];
}
- (IBAction)play:(id)sender {
    MPMoviePlayerViewController *playerViewController =[[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL URLWithString:@"http://127.0.0.1:12345/moive5/movie.m3u8"]];
    
    [playerViewController.view setFrame:CGRectMake(0, 0, 320, 568)];
    [self.view addSubview:playerViewController.view];
    [playerViewController.moviePlayer play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
