//
//  LMLogManager.m
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import "LMLogManager.h"

// 默认值为NO
static BOOL kLogEnable = NO;

@implementation LMLogManager

+ (void)setLogEnable:(BOOL)enable {
    kLogEnable = enable;
    
    if (enable) {
        LMLog(@"开启了LMBaseKit日志打印");
    } else {
        LMLog(@"关闭了LMBaseKit日志打印");
    }
}

+ (BOOL)getLogEnable {
    return kLogEnable;
}

+ (void)logWithFunction:(const char *)function lineNumber:(int)lineNumber formatString:(NSString *)formatString {
    
    if ([self getLogEnable]) {
        //开启了Log
        NSLog(@"%s[line %d]%@", function, lineNumber, formatString);
    }
}

@end
