//
//  AddNewCardViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/16.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "AddNewCardViewController.h"

@interface AddNewCardViewController ()

@end

@implementation AddNewCardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *titleLable = [[UILabel alloc]init];
    titleLable.text =@"添加新的银行卡";
    titleLable.textColor = [UIColor whiteColor];
    titleLable.textAlignment = NSTextAlignmentCenter;
    titleLable.frame = CGRectMake(self.view.bounds.size.width/2, 0, 100, 60);
    [self.navigationItem setTitleView:titleLable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
