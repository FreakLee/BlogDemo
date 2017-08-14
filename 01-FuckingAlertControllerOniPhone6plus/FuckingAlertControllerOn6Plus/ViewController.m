//
//  ViewController.m
//  FuckingAlertControllerOn6Plus
//
//  Created by Lyman on 2017/8/14.
//  Copyright © 2017年 Lyman. All rights reserved.
//

#import "ViewController.h"
#import "DeviceHelper.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Fucking AlertController On 6 Plus";
    
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
    self.deviceInfoLabel.text = [NSString stringWithFormat:@"current real machine: %@ %@",[DeviceHelper machineMode], systemVersion];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *title = [NSString stringWithFormat:@"%@ %@",[DeviceHelper machineMode],[[UIDevice currentDevice] systemVersion]];
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:@"Fucking AlertController On 6 Plus"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancle =
    [UIAlertAction actionWithTitle:@"忽略本次升级"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * _Nonnull action) {
                               
                           }];
    
    UIAlertAction *ok =
    [UIAlertAction actionWithTitle:@"立即升级"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * _Nonnull action) {
                               
                           }];
    
    [alertController addAction:ok];
    [alertController addAction:cancle];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
