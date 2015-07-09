//
//  RootTabBarViewController.m
//  SecretarialLofty
//
//  Created by SecretarialLofty on 15/7/8.
//  Copyright (c) 2015年 文书轩. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "BaseViewController.h"
#import "RecommendTableViewController.h"
#import "CategoriesTableViewController.h"
#import "SpecialTableViewController.h"
#import "MineTableViewController.h"

@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initWithTableViewControllers];
}

- (void)initWithTableViewControllers
{
    RecommendTableViewController *recommendTC = [RecommendTableViewController new];
    
    recommendTC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    
    CategoriesTableViewController *categoriesTC = [CategoriesTableViewController new];
    
    recommendTC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"分类" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    SpecialTableViewController *specialTC = [SpecialTableViewController new];
    
    recommendTC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"专题" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    MineTableViewController *mineTC = [MineTableViewController new];
    
    recommendTC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    NSArray *array = @[recommendTC, categoriesTC, specialTC, mineTC];
    
    NSMutableArray *viewControllers = [NSMutableArray array];
    
    // 将自定义的tableViewController添加到自定义navigationController中
    for (UITableViewController *tc in array) {
        
        BaseViewController *baseVC = [[BaseViewController alloc] initWithRootViewController:tc];
        // 将baseVC添加到可变数组中
        [viewControllers addObject:baseVC];
    }
    
    self.viewControllers = viewControllers;
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
