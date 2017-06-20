//
//  JumpStarViewController.m
//  Animation
//
//  Created by 李太白 on 17/6/20.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "JumpStarViewController.h"
#import "JumpStarView.h"

@interface JumpStarViewController ()
@property (weak, nonatomic) IBOutlet JumpStarView *jumpStarView;

@end

@implementation JumpStarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [_jumpStarView layoutIfNeeded];
    _jumpStarView.markedImage = [UIImage imageNamed:@"icon_star_incell"];
    _jumpStarView.non_markedImage = [UIImage imageNamed:@"blue_dot"];
    _jumpStarView.state = NONMark;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)taped:(id)sender {
    
    [_jumpStarView animate];
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
