//
//  LMLocationManager.m
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/28.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import "LMLocationManager.h"

@interface LMLocationManager ()<AMapLocationManagerDelegate,CLLocationManagerDelegate>{
    CLLocationManager *pri_locManager;
}
@property (nonatomic, strong) AMapLocationManager *locationManager;
@end

@implementation LMLocationManager

+ (LMLocationManager *)sharedInstance {
    static LMLocationManager *sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc]init];
    });
    
    return sharedInstance;
}

- (instancetype)init {
    if (self = [super init]) {
        pri_locManager = [[CLLocationManager alloc] init];
        pri_locManager.delegate = self;
        pri_locManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
        pri_locManager.distanceFilter = 500.00;
        [self configLocationManager];
    }
    return self;
}

- (void)configLocationManager {
    self.locationManager = [[AMapLocationManager alloc] init];
    if (!_locationManager) {
        [AMapLocationManager updatePrivacyAgree:AMapPrivacyAgreeStatusDidAgree];
        [AMapLocationManager updatePrivacyShow:AMapPrivacyShowStatusDidShow privacyInfo:AMapPrivacyInfoStatusDidContain];
        self.locationManager = [[AMapLocationManager alloc] init];
    }
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    self.locationManager.delegate = self;
    self.locationManager.reGeocodeLanguage = AMapLocationReGeocodeLanguageChinse;
}

- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(AMapLocatingCompletionBlock)completionBlock {
    SEL requestSelector = NSSelectorFromString(@"requestWhenInUseAuthorization");
    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined && [pri_locManager respondsToSelector:requestSelector]) {
        ((void (*)(id, SEL))[pri_locManager methodForSelector:requestSelector])(pri_locManager, requestSelector);
        return [self.locationManager requestLocationWithReGeocode:withReGeocode completionBlock:completionBlock];
    } else {
        return [self.locationManager requestLocationWithReGeocode:withReGeocode completionBlock:completionBlock];
    }
}

#pragma mark - AMapLocationManagerDelegate
- (void)amapLocationManager:(AMapLocationManager *)manager doRequireLocationAuth:(CLLocationManager*)locationManager {
    
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
}

@end
