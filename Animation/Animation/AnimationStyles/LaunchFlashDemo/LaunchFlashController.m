//
//  LaunchFlashController.m
//  Animation
//
//  Created by 李太白 on 17/6/14.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//  给image view添加一个动画萌版

#import "LaunchFlashController.h"

@interface LaunchFlashController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;

@end

@implementation LaunchFlashController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    window.backgroundColor = [UIColor colorWithRed:128.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0];
    
    CALayer * maskLayer = [CALayer layer];
    maskLayer.contents = (id)[UIImage imageNamed:@"logo"].CGImage;
    maskLayer.position = self.view.center;
    maskLayer.bounds = CGRectMake(0, 0, 60, 60);
    self.navigationController.view.layer.mask = maskLayer;
    
    UIView * maskBackgroundView = [[UIView alloc] initWithFrame:self.view.bounds];
    maskBackgroundView.backgroundColor = [UIColor whiteColor];
    [self.navigationController.view addSubview:maskBackgroundView];
    [self.navigationController.view bringSubviewToFront:maskBackgroundView];
    
    // 动画
    CAKeyframeAnimation *logoMaskAnimation = [CAKeyframeAnimation animationWithKeyPath:@"bounds"];
    logoMaskAnimation.duration = 1.0f;
    logoMaskAnimation.beginTime = CACurrentMediaTime() + 1.0f; // 延迟1秒
    
    CGRect initalBounds = maskLayer.bounds;
    CGRect secondBounds = CGRectMake(0, 0, 50, 50);
    CGRect finalBounds = CGRectMake(0, 0, 2000, 2000);
    logoMaskAnimation.values = @[[NSValue valueWithCGRect:initalBounds], [NSValue valueWithCGRect:secondBounds], [NSValue valueWithCGRect:finalBounds]];
    logoMaskAnimation.keyTimes = @[@(0),@(0.5),@(1)];
    logoMaskAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    logoMaskAnimation.removedOnCompletion = NO;
    logoMaskAnimation.fillMode = kCAFillModeForwards;
    [self.navigationController.view.layer.mask addAnimation:logoMaskAnimation forKey:@"logoMaskAnimaiton"];
    
    [UIView animateWithDuration:0.1 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        maskBackgroundView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [maskBackgroundView removeFromSuperview];
    }];
    
    [UIView animateWithDuration:2.0 delay:1.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        self.navigationController.view.transform = CGAffineTransformMakeScale(1.05, 1.05);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1.5 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.navigationController.view.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            
            self.navigationController.view.layer.mask = nil;
        }];
    }];
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
