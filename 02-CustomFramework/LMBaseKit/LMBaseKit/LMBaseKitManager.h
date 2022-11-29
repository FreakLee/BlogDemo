//
//  LMBaseKitManager.h
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^LMLocatingCompletionBlock)(CLLocation *location, NSString *formattedAddress, NSError *error);
@interface LMBaseKitManager : NSObject

/** 开启日志打印*/
+ (void)openLMSDKLog;

/** 关闭日志打印*/
+ (void)closeLMSDKLog;

/** 注册高德地图App*/
+ (void)registerAppWithAMapKey:(NSString *)appKey;

+ (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(LMLocatingCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
