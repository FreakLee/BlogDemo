//
//  LMLogManager.h
//  LMBaseKit
//
//  Created by Li Ming  on 2022/11/24.
//  Copyright © 2022 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMLogManager : NSObject

// 设置日志输出状态
+ (void)setLogEnable:(BOOL)enable;

// 获取日志输出状态
+ (BOOL)getLogEnable;

// 日志输出方法
+ (void)logWithFunction:(const char *)function lineNumber:(int)lineNumber formatString:(NSString *)formatString;

@end

NS_ASSUME_NONNULL_END

#define LMLog(format,...)  [LMLogManager logWithFunction:__FUNCTION__ lineNumber:__LINE__ formatString:[NSString stringWithFormat:format, ##__VA_ARGS__]]
