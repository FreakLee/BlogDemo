//
//  AppDelegate.m
//  LMBaseKitDemo
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import "AppDelegate.h"
#import <LMBaseKit/LMBaseKit.h>
@interface AppDelegate ()
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [LMBaseKitManager openLMSDKLog];
    [LMNetworkManager GET:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202003%2F07%2F20200307003417_krqqh.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1672018863&t=b603b5db3ffdfcff2870f3d7551af313" parameters:nil success:^(id  _Nonnull rspData) {
        
        if ([rspData isKindOfClass:[UIImage class]]) {
            UIImageView *imageView = [[UIImageView alloc] initWithImage:rspData];
            imageView.frame = self.window.bounds;
            [self.window addSubview:imageView];
        } else if ([rspData isKindOfClass:[NSData class]]) {
            UIImage *image = [UIImage imageWithData:rspData];
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            imageView.frame = self.window.bounds;
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.window addSubview:imageView];
        }
        
    } failure:^(NSError * _Nonnull error) {
        
    }];
    
    [LMBaseKitManager registerAppWithAMapKey:@"你的高德SDK Appkey"];
    
    [LMBaseKitManager requestLocationWithReGeocode:YES completionBlock:^(CLLocation * _Nonnull location, NSString * _Nonnull formattedAddress, NSError * _Nonnull error) {
        
        NSLog(@"【定位结果】%@",error ? [error localizedDescription] : formattedAddress);
        
    }];
    
    return YES;
}
@end
