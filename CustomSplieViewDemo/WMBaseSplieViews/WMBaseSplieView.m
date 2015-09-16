//
//  WMBaseSplieView.m
//  CustomSplieViewDemo
//
//  Created by Mac on 15/9/16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "WMBaseSplieView.h"

@implementation WMBaseSplieView
- (instancetype)init
{
    self = [super init];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        [self layoutViews];

    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        [self layoutViews];
    }
    return self;
}
/**
 *布局界面
 */
- (void)layoutViews
{
    //全局的遮罩
    _screenView = [[UIView alloc]initWithFrame:self.frame];
    _screenView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5f];
    [self addSubview:_screenView];
    
}
#pragma mark - Animated Mthod
- (void)animatedIn
{
    self.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.alpha = 0;
    [UIView animateWithDuration:.2f animations:^{
        self.alpha = 1;
        self.transform = CGAffineTransformMakeScale(1, 1);
    }];
}

- (void)animatedOut
{
    [UIView animateWithDuration:.2f animations:^{
        self.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            [self removeFromSuperview];
        }
    }];
}

#pragma mark - show or hide self
- (void)show
{
    UIWindow *keywindow = [[UIApplication sharedApplication] keyWindow];
    [self showInWindow:keywindow];
}

-(void)showInView:(UIView *)view
{
    [view addSubview:self];
    self.center = CGPointMake(view.bounds.size.width/2.0f,
                              view.bounds.size.height/2.0f);
    [self animatedIn];
    
}
-(void)showInWindow:(UIWindow*)window
{
    [window addSubview:self];
    self.center = CGPointMake(window.bounds.size.width/2.0f,
                              window.bounds.size.height/2.0f);
    [self animatedIn];
}

- (void)dismiss
{
    [self animatedOut];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
