//
//  WeChatViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/14.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "WeChatViewController.h"

@interface WeChatViewController ()

@end

@implementation WeChatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.5];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)cloeseView:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
