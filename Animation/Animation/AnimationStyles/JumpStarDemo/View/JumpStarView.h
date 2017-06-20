//
//  JumpStarView.h
//  Animation
//
//  Created by 李太白 on 17/6/20.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger , STATE) {
    NONMark,
    Mark,
};

@interface JumpStarView : UIView

- (void)animate;

@property (nonatomic,assign,setter=setState:)STATE state;

@property(nonatomic,strong)UIImage *markedImage;

@property(nonatomic,strong)UIImage *non_markedImage;

@end
