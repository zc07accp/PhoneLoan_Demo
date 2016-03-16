//
//  ZFNaviagationBar.m
//  PhoneLoan_Demo
//
//  Created by zf on 16/3/16.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "ZFNaviagationBar.h"

@implementation ZFNaviagationBar



-(void)drawRect:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"button"];
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}
@end
