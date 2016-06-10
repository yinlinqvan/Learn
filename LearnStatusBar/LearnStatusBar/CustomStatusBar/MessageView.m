//
//  MessageView.m
//  StatusBarView
//
//  Created by YouXianMing on 15/7/24.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "MessageView.h"

@implementation MessageView

+ (instancetype)messageViewWithTitle:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroudColor {
    
    MessageView *tmpView    = [[MessageView alloc] initWithFrame:STATUS_BAR_FRAME];
    tmpView.backgroundColor = backgroudColor;
    
    UILabel *label      = [[UILabel alloc] initWithFrame:tmpView.bounds];
    [label setTextColor:titleColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font          = [UIFont systemFontOfSize:10.f];
    label.text          = title;
    
    [tmpView addSubview:label];
    
    return tmpView;
}

+ (instancetype)messageViewWithTitle:(NSString *)title backgroundColor:(UIColor *)color {

    MessageView *tmpView    = [[MessageView alloc] initWithFrame:STATUS_BAR_FRAME];
    tmpView.backgroundColor = color;
    
    UILabel *label      = [[UILabel alloc] initWithFrame:tmpView.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.font          = [UIFont systemFontOfSize:10.f];
    label.text          = title;
    
    [tmpView addSubview:label];
    
    return tmpView;
}

- (void)showWithDuration:(NSTimeInterval)seconds {

    self.alpha = 0.f;
    
    [UIView animateWithDuration:seconds delay:0 usingSpringWithDamping:1.f initialSpringVelocity:0.f options:0 animations:^{
        
        self.alpha = 1.f;
        
    } completion:^(BOOL finished) {
        
    }];
    
}

- (void)hideWithDuration:(NSTimeInterval)seconds {

    [UIView animateWithDuration:seconds delay:0 usingSpringWithDamping:1.f initialSpringVelocity:0.f options:0 animations:^{
        
        self.alpha = 0.f;
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
        
    }];
}

- (void)dealloc {

    NSLog(@"释放了");
}

@end
