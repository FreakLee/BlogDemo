//
//  main.m
//  BitHacks
//
//  Created by Li Ming  on 2023/3/3.
//  Copyright © 2023 min Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 判断整数的奇偶性，返回YES则为偶数，否则为奇数
/// @param number 传入的某个整数
bool checkIsEven (int number) {
    return ((number & 1) == 0);
}

/// 判断某个整数的第N位是否设置了，返回YES则为设置，否则未设置
/// @param number 传入的某个整数
/// @param nth 第N位
bool checkNthIsSet (int number, int nth) {
    return (number & (1<<nth));
}

/// 将某个整数的第N位设置上，返回一个新整数，若已设置上则返回原数
/// @param number 传入的某个整数
/// @param nth 第N位
int setNthBit (int number, int nth) {
    //if (checkNthIsSet(number, nth)) return number;
    return (number | (1<<nth));
}

/// 将某个整数的第N位取消设置，若未设置则返回原数
/// @param number 传入的某个整数
/// @param nth 第N位
int unSetNthBit (int number, int nth) {
    //if (!checkNthIsSet(number, nth)) return number;
    return (number & ~(1<<nth));
}

/// 交换两个整数
/// @param a 整数a
/// @param b 整数b
void swap (int a, int b) {
    NSLog(@"交换前：a = %d，b = %d",a,b);
    if (a != b) {
        a ^= b;//a = a^b
        b ^= a;
        a ^= b;
    }
    NSLog(@"交换后：a = %d，b = %d",a,b);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"5%@偶数，6%@偶数",checkIsEven(5) ? @"是":@"不是",checkIsEven(6) ? @"是":@"不是");
        
        NSLog(@"123%@第3位，123%@第2位",checkNthIsSet(123,3) ? @"设置了":@"未设置",checkNthIsSet(123,2) ? @"设置了":@"未设置");
        
        NSLog(@"120设置第2位后为：%d，120设置第3位后为：%d",setNthBit(120,2),setNthBit(120,3));
        
        NSLog(@"127取消设置第4位后为：%d，111取消设置第4位后为：%d",unSetNthBit(127,4),unSetNthBit(111,4));
        
        swap(3, 4);
    }
    
    return 0;
}
