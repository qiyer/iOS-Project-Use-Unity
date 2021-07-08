//
//  main.m
//  Gun3D_Demo
//
//  Created by Zhi Zhuang on 2021/7/7.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AppDelegateUties.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    [AppDelegateUties Instance].gArgc = argc;
    [AppDelegateUties Instance].gArgv = argv;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
