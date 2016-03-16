//
//  CheckInterestViewController.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/15.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "CheckInterestViewController.h"

@interface CheckInterestViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;
@property (weak, nonatomic) IBOutlet UISlider *datslider;
@property (weak, nonatomic) IBOutlet UISlider *monerslider;

@end

@implementation CheckInterestViewController
- (IBAction)moneySlider:(UISlider *)sender
{
    self.moneyLabel.text = [NSString stringWithFormat:@"%d元",(int)self.monerslider.value];
}
- (IBAction)datSlider:(UISlider *)sender
{
    self.dayLabel.text = [NSString stringWithFormat:@"%02d天",(int)self.datslider.value];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // self.webview = [UIWebView load]
    //创建请求类NSURLRequest
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //设置代理
    self.webview.delegate = self;
    //webView加载/发送请求(异步)
    [self.webview loadRequest:request];

    
}
#pragma mark - webViewDelegate
//开始加载(networkActivityIndicator)
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}
//成功返回,并加载成功
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}
//失败返回
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
       [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
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
