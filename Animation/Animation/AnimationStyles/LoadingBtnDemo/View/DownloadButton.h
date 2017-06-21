//
//  DownloadButton.h
//  Animation
//
//  Created by 李太白 on 17/6/21.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownloadButton : UIView<CAAnimationDelegate>

// 进度条高度
@property(nonatomic,assign)CGFloat progressBarHeight;

// 进度条宽度
@property(nonatomic,assign)CGFloat progressBarWidth;

@end
