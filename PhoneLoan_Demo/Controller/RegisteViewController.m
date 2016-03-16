//
//  RegisteViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/15.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "RegisteViewController.h"

@interface RegisteViewController ()

@property (weak, nonatomic) IBOutlet UIButton *checkButton;
@property (assign,nonatomic) BOOL isCheck;
@end

@implementation RegisteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isCheck = NO;
}
- (IBAction)checkButton:(UIButton *)sender
{
    
    self.isCheck = !self.isCheck;
    if (self.isCheck)
    {
        [self.checkButton setBackgroundImage:[UIImage imageNamed:@"jiekuan_selected"] forState:UIControlStateNormal];
    }
    else
    {
        [self.checkButton setBackgroundImage:[UIImage imageNamed:@"jiekuan_unselected"] forState:UIControlStateNormal];
    }
}
- (IBAction)cancelItemButton:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)regisetButton:(UIButton *)sender
{
    
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
