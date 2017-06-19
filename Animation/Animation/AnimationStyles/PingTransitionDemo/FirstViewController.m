//
//  FirstViewController.m
//  Animation
//
//  Created by 李太白 on 17/6/15.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "FirstViewController.h"
#import "PingTransition.h"
#import "SecondViewController.h"

@interface FirstViewController ()<UINavigationControllerDelegate>


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.navigationController.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClick:(id)sender {
    
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPush) {
        
        PingTransition * ping = [[PingTransition alloc] init];
        return ping;
    }else{
        return nil;
    }

}

@end
