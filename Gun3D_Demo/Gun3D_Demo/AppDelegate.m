//
//  AppDelegate.m
//  Gun3D_Demo
//
//  Created by Zhi Zhuang on 2021/7/7.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "AppDelegateUties.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window                    = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor    = UIColor.whiteColor;
    [AppDelegateUties Instance].launchOptions = launchOptions;
    ViewController * vc = [[ViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
