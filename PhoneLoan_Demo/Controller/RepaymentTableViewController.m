//
//  RepaymentTableViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/15.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "RepaymentTableViewController.h"

@interface RepaymentTableViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation RepaymentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableHeaderView = [self configHeaderView];
    self.tableView.scrollEnabled = NO;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    UILabel *titleLable = [[UILabel alloc]init];
    titleLable.text =@"还款";
    titleLable.textColor = [UIColor whiteColor];
    titleLable.textAlignment = NSTextAlignmentCenter;
    titleLable.frame = CGRectMake(self.view.bounds.size.width/2, 0, 100, 60);
    [self.navigationItem setTitleView:titleLable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIView*)configHeaderView
{
    UIView *view = [[UIView alloc]init];
   
    view.frame = CGRectMake(0, 0, self.tableView.frame.size.width, 150 );
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame  = CGRectMake(view.frame.size.width/2-40, 20, 80, 80);
    imageView.image = [UIImage imageNamed:@"xiaoe_3data_icon1"];
    UILabel *label  = [[UILabel alloc]init];
    label.text =@"您暂时无需还款!";
    label.frame  = CGRectMake(view.frame.size.width/2 - 65, 120, 130, 30);
    [view addSubview:imageView];
    [view addSubview:label];
    return view;
}
#pragma mark - Table view data source
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor colorWithRed:232.0/255.0 green:232.0/255.0 blue:232/255.0 alpha:1];
    label.text = @"目前手机贷支持的还款方式如下:";
    return label;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     static NSString *CellIdentifier = @"UITableViewCell";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text =@"一键还款";
            break;
        case  1:
            cell.textLabel.text =@"支付宝还款";
            break;
        case 2:
            cell.textLabel.text =@"银联手机还款";
            break;
        case 3:
            cell.textLabel.text =@"网银还款";
            break;
        case 4:
            cell.textLabel.text =@"柜台还款";
            break;
        default:
            break;
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"待完善" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    //UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancelAction];
    //[alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
