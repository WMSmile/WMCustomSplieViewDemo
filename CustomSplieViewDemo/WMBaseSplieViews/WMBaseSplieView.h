//
//  WMBaseSplieView.h
//  CustomSplieViewDemo
//
//  Created by Mac on 15/9/16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WMBaseSplieView : UIView
@property (nonatomic ,strong) UIView *screenView;//背景（可以更改颜色和透明度）
/**
 *  在keyWindow上弹出的view
 */
- (void)show;
/**
 *  弹出自定义的View在Window上
 *
 *  @param window 在window上弹出
 */
- (void)showInWindow:(UIWindow*)window;
/**
 *  在view上弹出自定义的View
 *
 *  @param view 在View上弹出
 */
- (void)showInView:(UIView *)view;
/**
 *  消失
 */
- (void)dismiss;
@end
