//
//  LMBaseKitManager.m
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import "LMBaseKitManager.h"
#import "LMLogManager.h"
#import "LMLocationManager.h"

#import <AMapFoundationKit/AMapFoundationKit.h>
@implementation LMBaseKitManager

+ (void)openLMSDKLog {
    [LMLogManager setLogEnable:YES];
}

+ (void)closeLMSDKLog {
    [LMLogManager setLogEnable:NO];
}

+ (void)registerAppWithAMapKey:(NSString *)appKey {
    [AMapServices sharedServices].apiKey = appKey;
    [AMapLocationManager updatePrivacyAgree:AMapPrivacyAgreeStatusDidAgree];
    [AMapLocationManager updatePrivacyShow:AMapPrivacyShowStatusDidShow privacyInfo:AMapPrivacyInfoStatusDidContain];
}

+ (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(LMLocatingCompletionBlock)completionBlock {
    return [[LMLocationManager sharedInstance]  requestLocationWithReGeocode:withReGeocode completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
        if (completionBlock) {
            completionBlock(location,regeocode.formattedAddress,error);
        }
    }];
}

@end
