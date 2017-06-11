//
//  QQCuteView.h
//  Animation
//
//  Created by 李太白 on 17/6/11.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QQCuteView : UIView

// 父视图
@property (nonatomic , strong) UIView * containerView;

// 气泡上的数字
@property (nonatomic , strong) UILabel * bubbleLabel;

// 气泡直径
@property (nonatomic,assign)NSInteger bubbleWidth;

// 气泡粘性系数
@property (nonatomic,assign)CGFloat viscosity;

// 气泡颜色
@property (nonatomic , strong) UIColor * bubbleColor;

// 需要隐藏气泡时的属性
@property (nonatomic , strong) UIView * frontView;


- (instancetype)initWithPoint:(CGPoint)point superView:(UIView *)view;
- (void)setUp;
@end
