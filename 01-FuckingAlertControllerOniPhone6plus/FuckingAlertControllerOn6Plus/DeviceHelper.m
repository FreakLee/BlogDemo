//
//  DeviceHelper.m
//  FuckingAlertControllerOn6Plus
//
//  Created by Lyman on 2017/8/14.
//  Copyright © 2017年 Lyman. All rights reserved.
//

#import "DeviceHelper.h"
#import <sys/utsname.h>

@implementation DeviceHelper

+ (NSString *)machineMode {
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString *mode = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    
    if ([mode isEqualToString:@"iPhone1,1"]) return @"iPhone 2G";
    
    if ([mode isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    
    if ([mode isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    
    if ([mode isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    
    if ([mode isEqualToString:@"iPhone3,2"]) return @"iPhone 4";
    
    if ([mode isEqualToString:@"iPhone3,3"]) return @"iPhone 4";
    
    if ([mode isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    
    if ([mode isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    
    if ([mode isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    
    if ([mode isEqualToString:@"iPhone5,3"]) return @"iPhone 5c";
    
    if ([mode isEqualToString:@"iPhone5,4"]) return @"iPhone 5c";
    
    if ([mode isEqualToString:@"iPhone6,1"]) return @"iPhone 5s";
    
    if ([mode isEqualToString:@"iPhone6,2"]) return @"iPhone 5s";
    
    if ([mode isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    
    if ([mode isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    
    if ([mode isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    
    if ([mode isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    
    if ([mode isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
    
    if ([mode isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    
    if ([mode isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    
    if ([mode isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G";
    
    if ([mode isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G";
    
    if ([mode isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G";
    
    if ([mode isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G";
    
    if ([mode isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G";
    
    if ([mode isEqualToString:@"iPad1,1"])   return @"iPad 1G";
    
    if ([mode isEqualToString:@"iPad2,1"])   return @"iPad 2";
    
    if ([mode isEqualToString:@"iPad2,2"])   return @"iPad 2";
    
    if ([mode isEqualToString:@"iPad2,3"])   return @"iPad 2";
    
    if ([mode isEqualToString:@"iPad2,4"])   return @"iPad 2";
    
    if ([mode isEqualToString:@"iPad2,5"])   return @"iPad Mini 1G";
    
    if ([mode isEqualToString:@"iPad2,6"])   return @"iPad Mini 1G";
    
    if ([mode isEqualToString:@"iPad2,7"])   return @"iPad Mini 1G";
    
    if ([mode isEqualToString:@"iPad3,1"])   return @"iPad 3";
    
    if ([mode isEqualToString:@"iPad3,2"])   return @"iPad 3";
    
    if ([mode isEqualToString:@"iPad3,3"])   return @"iPad 3";
    
    if ([mode isEqualToString:@"iPad3,4"])   return @"iPad 4";
    
    if ([mode isEqualToString:@"iPad3,5"])   return @"iPad 4";
    
    if ([mode isEqualToString:@"iPad3,6"])   return @"iPad 4";
    
    if ([mode isEqualToString:@"iPad4,1"])   return @"iPad Air";
    
    if ([mode isEqualToString:@"iPad4,2"])   return @"iPad Air";
    
    if ([mode isEqualToString:@"iPad4,3"])   return @"iPad Air";
    
    if ([mode isEqualToString:@"iPad4,4"])   return @"iPad Mini 2G";
    
    if ([mode isEqualToString:@"iPad4,5"])   return @"iPad Mini 2G";
    
    if ([mode isEqualToString:@"iPad4,6"])   return @"iPad Mini 2G";
    
    if ([mode isEqualToString:@"i386"])      return @"iPhone Simulator";
    
    if ([mode isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    
    return mode;
}

@end
