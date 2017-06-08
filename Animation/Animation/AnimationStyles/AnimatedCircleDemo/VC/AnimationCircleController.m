//
//  AnimationCircleController.m
//  Animation
//
//  Created by hyfsoft on 2017/6/7.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "AnimationCircleController.h"
#import "CircleView.h"

@interface AnimationCircleController ()
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UISlider *slide;
@property (strong,nonatomic) CircleView *cv;
@end

@implementation AnimationCircleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.slide addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    self.cv = [[CircleView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 320/2, self.view.frame.size.height/2 - 320/2, 320, 320)];
    [self.view addSubview:self.cv];
    //首次进入
    self.cv.circleLayer.progress = _slide.value;
}


-(void)valueChanged:(UISlider *)slider
{
    self.valueLabel.text = [NSString stringWithFormat:@"Current:  %.2f",slider.value];
    self.cv.circleLayer.progress = slider.value;
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
