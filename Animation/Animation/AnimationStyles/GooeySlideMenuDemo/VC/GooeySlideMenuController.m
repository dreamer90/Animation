//
//  GooeySlideMenuController.m
//  Animation
//
//  Created by 李太白 on 17/6/10.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "GooeySlideMenuController.h"
#import "GooeySlideMenu.h"

@interface GooeySlideMenuController ()<UITableViewDataSource>
{
    GooeySlideMenu * menu;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation GooeySlideMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"完美侧边栏";
    
    menu = [[GooeySlideMenu alloc] initWithTitles:@[@"首页",@"消息",@"发布",@"发现",@"个人",@"设置"]];
    
    menu.menuClickBlock = ^(NSInteger index, NSString*title, NSInteger titleCount){
        NSLog(@"index:%ld title:%@ titleCounts:%ld",index,title,titleCount);
    };
}
- (IBAction)buttonTrigger:(id)sender {
    [menu trigger];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    
    return cell;
}


@end
