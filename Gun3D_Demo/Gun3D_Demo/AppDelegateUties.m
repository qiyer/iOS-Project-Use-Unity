//
//  AppDelegateUties.m
//  Gun3D_Demo
//
//  Created by Zhi Zhuang on 2021/7/7.
//

#import "AppDelegateUties.h"

@implementation AppDelegateUties

+(instancetype)Instance{
    static dispatch_once_t onceToken;
    static AppDelegateUties * _instance;
    dispatch_once(&onceToken, ^{
        _instance = [[AppDelegateUties alloc] init];
    });
    return _instance;
}

@end
