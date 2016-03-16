//
//  MyViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/14.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "MyViewController.h"
#import "LogInViewController.h"
#import "BorrowTableViewCell.h"
#import "AssetsTableViewCell.h"
#import "BalanceTableViewCell.h"
#import "UMSocial.h"
#import "MyFinancialViewController.h"
#import "ZFNaviagationBar.h"
#import "AttestationViewController.h"
#import "AddBankCardTableViewController.h"
@interface MyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *bodyView;
@property (nonatomic)UITableView *BorrowTable;
@property (nonatomic)UITableView *FinancialTable;
@property (weak, nonatomic) IBOutlet UIButton *borrowBotton;
@property (weak, nonatomic) IBOutlet UIButton *financialBotton;
@property (assign,nonatomic)BOOL isBorrowBottonSelect;
@property (assign,nonatomic)BOOL isFinancialBottonSelect;
@property (strong,nonatomic)NSArray *BorrowTitleArray;
@property (strong,nonatomic)UINib *nib;

@end

@implementation MyViewController
-(NSArray *)BorrowTitleArray
{
    _BorrowTitleArray = [NSArray arrayWithObjects:@"我的资料",@"借款银行卡",@"信用额度",@"我的借款",@"我的推荐人",@"邀请好友" ,nil];
    return _BorrowTitleArray;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self configNavi];
    [self configTabView];
    _isBorrowBottonSelect = YES;
    _isFinancialBottonSelect = NO;
    self.BorrowTable.hidden = NO;
    self.FinancialTable .hidden = YES;
    
    // Do any additional setup after loading the view.
}
- (IBAction)checkFinancialBotton:(UIButton *)sender
{
    self.BorrowTable.hidden = YES;
    self.FinancialTable.hidden = NO;
    self.financialBotton.tintColor = [UIColor redColor];
    [self.borrowBotton setBackgroundImage:[UIImage imageNamed:@"buttonhuise"] forState:UIControlStateNormal];
    self.borrowBotton.tintColor = [UIColor blackColor];
    
    self.financialBotton.enabled = NO;
    self.borrowBotton.enabled = YES;
    
}
- (IBAction)checkBorrowBotton:(UIButton *)sender
{
    self.BorrowTable.hidden = NO;
    self.FinancialTable.hidden = YES;
    
    [self.financialBotton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.financialBotton setBackgroundImage:[UIImage imageNamed:@"buttonhuise"] forState:UIControlStateNormal];
    [self.borrowBotton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
   self.financialBotton.enabled = YES ;
    self.borrowBotton.enabled = NO;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section

{
        if (section == 0)
        {
            return 0;
        }
        else
        {
            return 20;
        }

}
-(void)configTabView
{
    self.bodyView.backgroundColor = [UIColor blueColor];
    
    self.BorrowTable = [[UITableView alloc]init];
    self.BorrowTable.frame =CGRectMake(0, 0, self.view.frame.size.width, self.view.bounds.size.height);
    self.BorrowTable.tag = 1;
    self.FinancialTable = [[UITableView alloc]init];
    self.FinancialTable.tag = 2;
    self.FinancialTable.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.bounds.size.height);
    self.BorrowTable.delegate = self;
    self.BorrowTable.dataSource = self;
    self.FinancialTable.dataSource = self;
    self.FinancialTable.delegate = self;
    [self.BorrowTable registerNib:[UINib nibWithNibName:@"BorrowTableViewCell" bundle:nil ]forCellReuseIdentifier:@"BorrowCell"];
    
    [self.FinancialTable registerNib:[UINib nibWithNibName:@"AssetsTableViewCell" bundle:nil] forCellReuseIdentifier:@"AssetsCell"];
    [self.FinancialTable registerNib:[UINib nibWithNibName:@"BalanceTableViewCell" bundle:nil] forCellReuseIdentifier:@"BalanceCell"];
    [self.FinancialTable registerNib:[UINib nibWithNibName:@"BorrowTableViewCell" bundle:nil] forCellReuseIdentifier:@"BorrowCell1"];
    
    self.FinancialTable.estimatedRowHeight = 70;
    self.FinancialTable.rowHeight = UITableViewAutomaticDimension;
    self.BorrowTable.estimatedRowHeight = 70;
    self.BorrowTable.rowHeight = UITableViewAutomaticDimension;
    
    [self.bodyView addSubview:self.BorrowTable];
    [self.bodyView addSubview:self.FinancialTable];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag ==2 && indexPath.section == 0&& indexPath.row ==0)
    {
        return 70;
    }
    else
    {
        return 44;
    }
}
- (IBAction)loginVC:(UIButton *)sender
{
    LogInViewController *lvc = [[LogInViewController alloc]init];
    [self presentViewController:lvc animated:YES completion:nil];
}
-(void)configNavi
{
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigation"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableView.tag == 1 )
    {
        return 3;
    }
    else
    {
        return 4;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag ==1 )
    {
        switch (section)
        {
            case 0:
                return 3;
                case 1:
                return 1;
                case 2:
                return 2;
            default:
                break;
        }
    }
    else if (tableView.tag == 2)
    {
        switch (section)
        {
            case 0:
                return 2;
            case 1:
                return 2;
            case 2:
                return 1;
            case 3:
                return 1;
            default:
                break;
        }
    }
    return 0;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == 1)
    {
     BorrowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BorrowCell" forIndexPath:indexPath];
        switch ( indexPath.section)
        {
            case 0:
                switch (indexPath.row)
            {
                    case 0:
                    cell.image.image = [UIImage imageNamed:@"pc_icon01"];
                    cell.Lable.text = @"我的资料";
                    return cell;
                       case 1:
                    cell.image.image = [UIImage imageNamed:@"pc_icon02"];
                    cell.Lable.text = @"借款银行卡";
                     return cell;
                    case 2:
                    cell.image.image = [UIImage imageNamed:@"credit_icon"];
                    cell.Lable.text = @"信用额度";
                     return cell;
                    default:
                        break;
                }
            case 1:
                cell.image.image = [UIImage imageNamed:@"pc_icon03"];
                cell.Lable.text = @"我的借款";
                return cell;
            case 2:
                switch (indexPath.row)
            {
                case 0:
                    cell.image.image = [UIImage imageNamed:@"pc_icon04"];
                    cell.Lable.text = @"我的推荐人";
                    return cell;
                case 1:
                    cell.image.image = [UIImage imageNamed:@"pc_icon05"];
                    cell.Lable.text = @"邀请好友";
                    return cell;
            }
            default:
                return cell;
        }
    }
    else
    {
        if (indexPath.section == 0)
        {
            if (indexPath.row ==0 )
            {
                AssetsTableViewCell *aCell = [tableView dequeueReusableCellWithIdentifier:@"AssetsCell" forIndexPath:indexPath];
                return aCell;
            }
            else
            {
                BalanceTableViewCell *bCell = [tableView dequeueReusableCellWithIdentifier:@"BalanceCell" forIndexPath:indexPath];
                return bCell;
            }
            
        }
        switch (indexPath.section)
        {
            case 1:
                if (indexPath.row == 0)
                {
                    
                   BorrowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BorrowCell1" forIndexPath:indexPath];
                    cell.image.image = [UIImage imageNamed:@"financial_icon"];
                    cell.Lable.text = @"我的理财";
                    return cell;
                }
                else
                {
                    BorrowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BorrowCell1" forIndexPath:indexPath];
                    cell.image.image = [UIImage imageNamed:@"financialbankcard"];
                    cell.Lable.text = @"理财银行卡";
                    return cell;
                }
                
            case 2:
            {
                BorrowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BorrowCell1" forIndexPath:indexPath];
                cell.image.image = [UIImage imageNamed:@"coupon_icon"];
                cell.Lable.text = @"我的优惠券";
                return cell;
            }
            default:
            {
                  BorrowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BorrowCell1" forIndexPath:indexPath];
                cell.image.image = [UIImage imageNamed:@"trade_icon"];
                cell.Lable.text = @"交易密码";
                return cell;
            }
        }
    }

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == 1 &&indexPath.section == 0 &&indexPath.row == 0)
    {
        [self.navigationController pushViewController:[[AttestationViewController alloc]init] animated:YES];
    }
 if (tableView.tag == 1 && indexPath.section == 2 &&indexPath.row == 1)
 {
     
     [UMSocialSnsService presentSnsIconSheetView:self appKey:@"568a627967e58e6a66002753" shareText:@"要分享到友盟的数据是这些...." shareImage:[UIImage imageNamed:@"wechat_logo"]  shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToSms,UMShareToQQ
                                                                                                                                                                                 ,nil]  delegate:nil];
 }
    if (tableView.tag ==1 && indexPath.section == 0 && indexPath.row == 1)
    {
        [self.navigationController pushViewController:[[AddBankCardTableViewController alloc]init
          ]animated:YES];
    }
    if (tableView.tag == 2 && indexPath.section == 1 && indexPath.row == 0)
    {
        [self.navigationController pushViewController:[[MyFinancialViewController alloc]init] animated:YES];
    }
}
@end

