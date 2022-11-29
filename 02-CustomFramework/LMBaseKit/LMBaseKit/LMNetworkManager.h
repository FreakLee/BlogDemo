//
//  LMNetworkManager.h
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMNetworkManager : NSObject

+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id rspData))success
    failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
