//
//  ScoreKeeperPlusAppDelegate.m
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScoreKeeperPlusAppDelegate.h"

#import "ScoreKeeperPlusViewController.h"

@implementation ScoreKeeperPlusAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ScoreKeeperPlusViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *uinav = [[UINavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = uinav;
    [self.window makeKeyAndVisible];
    return YES;
}



@end
