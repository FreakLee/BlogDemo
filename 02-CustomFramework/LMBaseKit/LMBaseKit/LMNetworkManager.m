//
//  LMNetworkManager.m
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import "LMNetworkManager.h"
#import "AFNetworking.h"

@implementation LMNetworkManager

+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id rspData))success
    failure:(void (^)(NSError *error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"text/html", @"text/json", @"text/javascript",@"application/xml", @"application/xhtml+xml",@"application/json", @"application/hal+json",@"image/png",@"image/jpeg",@"gzip",@"multipart/form-data",nil];
    
    [manager GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            id resultObj;
            
            if ([responseObject isKindOfClass:[NSDictionary class]]) {
                resultObj = responseObject;
            } else if ([responseObject isKindOfClass:[NSData class]]) {
                resultObj = responseObject;
            } else if ([responseObject isKindOfClass:[NSArray class]]) {
                resultObj = responseObject;
            } else if ([responseObject isKindOfClass:[UIImage class]]) {
                resultObj = responseObject;
            } else if ([responseObject isKindOfClass:[NSString class]]) {
                resultObj = responseObject;
            } else {
                NSString *receiveStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
                NSData *mm = [receiveStr dataUsingEncoding:NSUTF8StringEncoding];
                NSError *err;
                id json = [NSJSONSerialization JSONObjectWithData:mm options:NSJSONReadingAllowFragments error:&err];
                resultObj = json;
            }
            
            if (success) {
                success(resultObj);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            if (failure) {
                failure(error);
            }
        }];
}

@end
