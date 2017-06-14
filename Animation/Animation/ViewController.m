//
//  ViewController.m
//  Animation
//
//  Created by hyfsoft on 2017/6/7.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "ViewController.h"
#import "AnimationCircleController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,weak)UITableView * tableView;

@property (nonatomic , strong) NSArray * styleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"动画";
    _styleArr = @[@"AnimationCircleController",@"QQCuteViewController",@"GooeySlideMenuController",@"LaunchFlashController"];
    
    self.tableView.hidden = NO;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _styleArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = _styleArr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString * title = _styleArr[indexPath.row];
    
    id myObj = [[NSClassFromString(title) alloc] init];
    
    [self.navigationController pushViewController:myObj animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - lazy
- (UITableView *)tableView{
    if (!_tableView) {
        
        UITableView * tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        tableView.showsVerticalScrollIndicator = NO;
        tableView.showsHorizontalScrollIndicator = NO;
        tableView.dataSource = self;
        tableView.delegate = self;
        [self.view addSubview:tableView];
        _tableView = tableView;
    }
    
    return _tableView;
}

@end
