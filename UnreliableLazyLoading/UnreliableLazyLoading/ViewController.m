//
//  ViewController.m
//  UnreliableLazyLoading
//
//  Created by Lyman on 2018/3/19.
//  Copyright © 2018年 Lyman. All rights reserved.
//

#import "ViewController.h"

#import "TestViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIScrollView *contentScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIScrollView *)contentScrollView {
    if (_contentScrollView == nil) {
        UIScrollView *contentView = [[UIScrollView alloc] init];
        contentView.backgroundColor = [UIColor blueColor];
        [self.view addSubview:contentView];
        _contentScrollView = contentView;
        NSLog(@"%s---%p\n",__func__,_contentScrollView);
    }
    return _contentScrollView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    TestViewController *testCtrl = [[TestViewController alloc] init];
    [self.navigationController pushViewController:testCtrl animated:YES];
}

@end
