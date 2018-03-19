//
//  TestViewController.m
//  UnreliableLazyLoading
//
//  Created by Lyman on 2018/3/19.
//  Copyright © 2018年 Lyman. All rights reserved.
//

#import "TestViewController.h"
#import "DeviceHelper.h"

@interface TestViewController ()

@property (weak, nonatomic) UILabel *testLabel;
//@property (weak, nonatomic) UIScrollView *contentView;
@property (weak, nonatomic) UIScrollView *contentScrollView;

@end

@implementation TestViewController

#pragma mark - Lazy Load
- (UILabel *)testLabel {
    if (_testLabel == nil) {
        UILabel *label = [UILabel new];
        label.text = @"Please look at the console log";
        label.font = [UIFont systemFontOfSize:15.0];
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        _testLabel = label;
        NSLog(@"%s---%p\n",__func__,_testLabel);
    }
    return _testLabel;
}

//- (UIScrollView *)contentView {
//    if (_contentView == nil) {
//        UIScrollView *contentView = [[UIScrollView alloc] init];
//        contentView.backgroundColor = [UIColor lightGrayColor];
//        [self.view addSubview:contentView];
//        _contentView = contentView;
//        NSLog(@"%s---%p\n",__func__,_contentView);
//    }
//    return _contentView;
//}

- (UIScrollView *)contentScrollView {
    if (_contentScrollView == nil) {
        UIScrollView *contentView = [[UIScrollView alloc] init];
        contentView.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:contentView];
        _contentScrollView = contentView;
        NSLog(@"%s---%p\n",__func__,_contentScrollView);
    }
    return _contentScrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
    self.title = [NSString stringWithFormat:@"%@ %@",[DeviceHelper machineMode], systemVersion];
    
    [self setupContentSubViewsFrame];
    //NSLog(@"%s--_testLabel--%p\n",__func__,_testLabel);
    //NSLog(@"%s--_contentView--%p\n",__func__,_contentView);
    NSLog(@"%s--_contentScrollView--%p\n",__func__,_contentScrollView);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupContentSubViewsFrame {
    CGFloat selfViewWidth = self.view.frame.size.width;
    CGFloat selfViewHeight = self.view.frame.size.height;
    self.testLabel.frame = CGRectMake(0, 84, selfViewWidth, 20);
    //self.contentView.frame = CGRectMake(0, 124, selfViewWidth, selfViewHeight - 134);
    self.contentScrollView.frame = CGRectMake(0, 124, selfViewWidth, selfViewHeight - 134);
}

@end
