//
//  WMCustomView.m
//  CustomSplieViewDemo
//
//  Created by Mac on 15/9/16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "WMCustomView.h"

@implementation WMCustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addViews];
    }
    return self;
}
/**
 *  自定义
 */
- (void)addViews
{
    //轻拍手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismiss)];
    [self.screenView addGestureRecognizer:tap];
    
    //弹出的view
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    bgView.backgroundColor = [UIColor redColor];
    bgView.center = self.center;
    [self addSubview:bgView];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
