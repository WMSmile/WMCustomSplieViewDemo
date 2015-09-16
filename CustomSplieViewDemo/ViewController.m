//
//  ViewController.m
//  CustomSplieViewDemo
//
//  Created by Mac on 15/9/16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "ViewController.h"
#import "WMCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //展示的按钮
    UIButton *showBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    showBtn.frame = CGRectMake(20, 50, 200, 200);
    [showBtn setTitle:@"show" forState:UIControlStateNormal];
    showBtn.backgroundColor = [UIColor lightGrayColor];
    [showBtn addTarget:self action:@selector(showBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view  addSubview:showBtn];
}

/**
 *  展示
 *
 *  @param sender 按钮自身
 */
- (void)showBtnClick:(UIButton *)sender
{
    
    WMCustomView *customView = [[WMCustomView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [customView show];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
