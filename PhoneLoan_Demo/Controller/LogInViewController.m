//
//  LogInViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/14.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "LogInViewController.h"
#import "RegisteViewController.h"
@interface LogInViewController ()

@end

@implementation LogInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
- (IBAction)backButtonItem:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)gotoRegisetView:(UIButton *)sender
{
    [self presentViewController:[[RegisteViewController alloc]init] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
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
