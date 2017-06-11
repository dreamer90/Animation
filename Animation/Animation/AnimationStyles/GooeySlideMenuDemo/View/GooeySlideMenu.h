//
//  GooeySlideMenu.h
//  Animation
//
//  Created by 李太白 on 17/6/10.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MenuButtonClickedBlock)(NSInteger index, NSString*title, NSInteger titleCount);

@interface GooeySlideMenu : UIView

// 初始化侧滑栏
- (instancetype)initWithTitles:(NSArray *)titles;
// 初始化侧滑栏及按钮样式
- (instancetype)initWithTitles:(NSArray *)titles withButtonHeight:(CGFloat)height withMenuColor:(UIColor*)menuColor withBackBlurStyle:(UIBlurEffectStyle)style;

// 弹出侧滑
- (void)trigger;

@property (nonatomic , copy) MenuButtonClickedBlock menuClickBlock;
@end
