//
//  ViewController.m
//  Gun3D_Demo
//
//  Created by Zhi Zhuang on 2021/7/7.
//

#import "ViewController.h"
#import <UnityFramework/UnityFramework.h>
#import "AppDelegateUties.h"

@interface ViewController ()<UnityFrameworkListener>

@end

@implementation ViewController{
    UnityFramework* ufw;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBlueColor];
    // Do any additional setup after loading the view.
    [self initView];
    [self initUnity];
}

- (void)initView{
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(120, 70, 200, 30)];
    label.text = @"打枪的要不要";
    label.font = [UIFont systemFontOfSize:25] ;
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
}

- (void)initUnity{
    ufw = [self UnityFrameworkLoad];
    [ufw setDataBundleId: "com.unity3d.framework"];
    [ufw registerFrameworkListener: self];
    [ufw runEmbeddedWithArgc: [AppDelegateUties Instance].gArgc argv: [AppDelegateUties Instance].gArgv appLaunchOpts: [AppDelegateUties Instance].launchOptions];
    // set quit handler to change default behavior of exit app
    [ufw appController].quitHandler = ^(){ NSLog(@"AppController.quitHandler called"); };
        
    UIView* view = [[ufw appController] rootView];
    
    [[ufw appController].window setFrame:CGRectMake(20, 120, 320, 500)];
    [[ufw appController].window setAlpha:0.8f];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(100, 60, 200, 30)];
    label.text = @"打枪的不要";
    label.font = [UIFont systemFontOfSize:25];
    label.textColor = [UIColor redColor];
    [view addSubview:label];
}

-(UnityFramework*) UnityFrameworkLoad
{
    NSString* bundlePath = nil;
    bundlePath = [[NSBundle mainBundle] bundlePath];
    bundlePath = [bundlePath stringByAppendingString: @"/Frameworks/UnityFramework.framework"];
    
    NSBundle* bundle = [NSBundle bundleWithPath: bundlePath];
    if ([bundle isLoaded] == false) [bundle load];
    
    UnityFramework* ufw = [bundle.principalClass getInstance];
    if (![ufw appController])
    {
        // unity is not initialized
        [ufw setExecuteHeader: &_mh_execute_header];
    }
    return ufw;
}

@end
