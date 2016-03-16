//
//  FinacialViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/14.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "FinacialViewController.h"

@interface FinacialViewController ()

@end

@implementation FinacialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configNavi];
    // Do any additional setup after loading the view.
}
-(void)configNavi
{
    UILabel *label = [[UILabel alloc]init];
    label.center = self.navigationController.navigationBar.center;
    label.frame = CGRectMake(0, 0, 60, 30);
    label.text = @"理财";
    label.textColor =[UIColor whiteColor];
    self.navigationItem.titleView = label;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigation"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
