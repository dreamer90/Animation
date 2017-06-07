//
//  AnimationCircleController.m
//  Animation
//
//  Created by hyfsoft on 2017/6/7.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "AnimationCircleController.h"

@interface AnimationCircleController ()
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UISlider *slide;

@end

@implementation AnimationCircleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.slide addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
}


-(void)valueChanged:(UISlider *)slider
{
    self.valueLabel.text = [NSString stringWithFormat:@"Current:  %.2f",slider.value];
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
