//
//  SystemNavViewController.m
//  LearnStatusBar
//
//  Created by 印林泉 on 16/6/10.
//  Copyright © 2016年 yiq. All rights reserved.
//

#import "SystemNavViewController.h"

@interface SystemNavViewController ()

@end

@implementation SystemNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//- (UIStatusBarStyle)preferredStatusBarStyle{
//     //有导航控制器的 VC中使用 preferredStatusBarStyle方法 不被调用的解决办法在导航VC中这样调用
//    return [self.topViewController preferredStatusBarStyle];
//}

- (UIViewController *)childViewControllerForStatusBarStyle{
    return self.topViewController;
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
