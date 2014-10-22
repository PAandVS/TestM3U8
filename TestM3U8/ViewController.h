//
//  ViewController.h
//  TestM3U8
//
//  Created by lanou3g on 14-3-14.
//  Copyright (c) 2014年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "M3U8Handler.h"
#import "VideoDownloader.h"
@interface ViewController : UIViewController<M3U8HandlerDelegate,VideoDownloadDelegate>

@end
