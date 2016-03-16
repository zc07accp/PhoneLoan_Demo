//
//  HomeViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/14.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "HomeViewController.h"
#import "WeChatViewController.h"
#define WIDTH self.view.bounds.size.width
#define HEIGHT self.view.bounds.size.height
#import "RepaymentTableViewController.h"
#import "ScheduleTableViewController.h"
#import "CheckInterestViewController.h"
@interface HomeViewController ()
@property (strong,nonatomic)UIImage *image;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollerViewConstraint;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configScroller];
    [self configNavi];
    
    
    
}
- (IBAction)gotoCheckInterestView:(UIButton *)sender
{
    CheckInterestViewController *cvc = [[CheckInterestViewController alloc]init];
    [self.navigationController pushViewController:cvc animated:YES];
}
- (IBAction)gotoScheduleVCBotton:(UIButton *)sender
{
    ScheduleTableViewController *svc = [[ScheduleTableViewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
}
- (IBAction)gotoRepaymentTabViewButton:(UIButton *)sender
{
    
    RepaymentTableViewController *rTVC = [[RepaymentTableViewController alloc]init];
    [self.navigationController pushViewController:rTVC animated:YES];
}
-(void)configNavi
{
    UILabel *label = [[UILabel alloc]init];
    label.center = self.navigationController.navigationBar.center;
    label.frame = CGRectMake(0, 0, 60, 30);
    label.text = @"手机贷";
    label.textColor =[UIColor whiteColor];
    self.navigationItem.titleView = label;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigation"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
}
-(void)configScroller
{
    self.scrollerViewConstraint.constant  =  5;
    self.ScrollView.pagingEnabled = YES;
    self.ScrollView.showsHorizontalScrollIndicator = NO;
    self.ScrollView.contentSize = CGSizeMake((WIDTH-20) * 2 ,self.ScrollView.frame.size.height);
    
    for ( int i = 0; i < 2; i++)
    {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.frame = CGRectMake(i*(WIDTH-20), 0, WIDTH -20 ,self.ScrollView.frame.size.height);
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"haibao%d",i]];
        [self.ScrollView addSubview:imageView];
    }
}
- (IBAction)gotoWeChatViewcontroller:(UIBarButtonItem *)sender
{
    WeChatViewController *wvc = [[WeChatViewController alloc]init];

    wvc.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:wvc animated:YES completion:nil];
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
