//
//  LMLocationManager.h
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/28.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AMapLocationKit/AMapLocationKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMLocationManager : NSObject

+ (LMLocationManager*)sharedInstance;

- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(AMapLocatingCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
