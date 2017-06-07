//
//  CircleView.m
//  Animation
//
//  Created by hyfsoft on 2017/6/7.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

+ (Class)layerClass{
    return [CircleLayer class];
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.circleLayer = [CircleLayer layer];
        self.circleLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        self.circleLayer.contentsScale = [UIScreen mainScreen].scale;
        [self.layer addSublayer:self.circleLayer];
    }
    
    return self;
}
@end
