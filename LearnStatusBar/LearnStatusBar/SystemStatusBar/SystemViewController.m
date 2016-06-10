//
//  SystemViewController.m
//  LearnStatusBar
//
//  Created by 印林泉 on 16/6/10.
//  Copyright © 2016年 yiq. All rights reserved.
//

#import "SystemViewController.h"

@interface SystemViewController ()

@end

@implementation SystemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    //隐藏导航栏后 系统会调用 preferredStatusBarStyle 方法
    //self.navigationController.navigationBarHidden = YES;
    //此法的只有在设置了以下代码才会有被调用（对于preferredStatusBarStyle设置LightContent不执行问题）的效果，其实还是没有执行！
    //如果你使用了系统的UINavigationController，且它的navigationBar没有被隐藏的话，它的rootController及之后push的controller的preferredStatusBarStyle方法不会被调用（其他两个方法还是会被调用）
    //[self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];

    [UIView animateWithDuration:5.0 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
    return UIStatusBarStyleDefault;//default
}

//- (BOOL)prefersStatusBarHidden {
//    //return YES;
//    return NO;//default;
//}

// Override to return the type of animation that should be used for status bar changes for this view controller. This currently only affects changes to prefersStatusBarHidden.
- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationSlide;
    return UIStatusBarAnimationNone;
    return UIStatusBarAnimationFade;//default
}

// This should be called whenever the return values for the view controller's status bar attributes have changed. If it is called from within an animation block, the changes will be animated along with the rest of the animation block.
//- (void)setNeedsStatusBarAppearanceUpdate NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;

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
