//
//  MessageViewController.m
//  LearnStatusBar
//
//  Created by 印林泉 on 16/6/10.
//  Copyright © 2016年 yiq. All rights reserved.
//

#import "MessageViewController.h"
#import "StatusMessageHandle.h"
#import "MessageView.h"
#define MessageStatusBarBackgroudColor [UIColor redColor]
#define MessageStatusBarTitleColor [UIColor whiteColor]
@interface MessageViewController ()

@property (nonatomic, strong) NSTimer * timer;

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    //[self performSelector:@selector(showMessageEvent) withObject:nil afterDelay:5.f];
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.0f target:self selector:@selector(showMessageStatusBar) userInfo:nil repeats:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [_timer invalidate];
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationFade;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMessageStatusBar {
    [StatusMessageHandle showAndHideDuration:2.f];
    [StatusMessageHandle showWithView:[MessageView messageViewWithTitle:@"有一条新消息哦" titleColor:MessageStatusBarTitleColor backgroundColor:MessageStatusBarBackgroudColor] hideAfterSeconds:3.f];
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
