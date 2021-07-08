//
//  AppDelegateUties.h
//  Gun3D_Demo
//
//  Created by Zhi Zhuang on 2021/7/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegateUties : NSObject
+(instancetype)Instance;

@property(nonatomic,assign) int gArgc ;
@property(nonatomic,assign) char*_Nullable* _Nullable gArgv;
@property(nonatomic,strong) NSDictionary * launchOptions;

@end

NS_ASSUME_NONNULL_END
