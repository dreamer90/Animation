//
//  SlideMenuButton.h
//  Animation
//
//  Created by 李太白 on 17/6/10.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideMenuButton : UIView


-(id)initWithTitle:(NSString *)title;


@property(nonatomic,strong)UIColor *buttonColor;


@property(nonatomic,copy)void(^buttonClickBlock)();

@end
