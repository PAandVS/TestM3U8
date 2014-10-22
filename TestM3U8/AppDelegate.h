//
//  AppDelegate.h
//  TestM3U8
//
//  Created by lanou3g on 14-3-14.
//  Copyright (c) 2014年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTTPServer.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    HTTPServer *httpServer;
}
@property (strong, nonatomic) UIWindow *window;

@end
