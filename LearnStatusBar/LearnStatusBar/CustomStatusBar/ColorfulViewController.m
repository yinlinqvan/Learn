//
//  ColorfulViewController.m
//  LearnStatusBar
//
//  Created by 印林泉 on 16/6/10.
//  Copyright © 2016年 yiq. All rights reserved.
//

#import "ColorfulViewController.h"
#define NavigationBarBackgroudColor [UIColor redColor]
#define NavigationBarTinitColor [UIColor yellowColor]
@interface ColorfulViewController ()
@property (nonatomic, strong) UIView * colorfulStatusBar;

@end

@implementation ColorfulViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController setHidesBarsOnSwipe:YES];//滚动隐藏导航栏/标签栏
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController.navigationBar setBackgroundColor:NavigationBarBackgroudColor];
    [self.navigationController.navigationBar setTintColor:NavigationBarTinitColor];
    //[self.navigationController setNavigationBarHidden:YES];
    _colorfulStatusBar = [[UIView alloc]initWithFrame:[[UIApplication sharedApplication] statusBarFrame]];
    [_colorfulStatusBar setBackgroundColor:NavigationBarBackgroudColor];
    [self.view addSubview:_colorfulStatusBar];
    [UIView animateWithDuration:5.0 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationSlide;
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
