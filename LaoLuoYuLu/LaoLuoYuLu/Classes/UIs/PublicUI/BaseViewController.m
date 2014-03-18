//
//  BaseViewController.m
//  LaoLuoYuLu
//
//  Created by 老岳 on 14-3-15.
//  Copyright (c) 2014年 LYue. All rights reserved.
//

#import "BaseViewController.h"
#import "UINavigationController+Rotate.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addNavBarView];
}

//导航栏
- (void)addNavBarView
{
    if (IOS7AndLater) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    //导航栏
    UIView *navBgView = [[UIView alloc] initWithFrame:CGRectMake(0, IOS7AndLater?-20:0, ScreenWidth, IOS7AndLater?64:44)];
    navBgView.backgroundColor = GrayColor;
    navBgView.alpha = IOS7AndLater?0.5:1;
    [self.navigationController.navigationBar addSubview:navBgView];
    
    //导航栏标题
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 44)];
    self.titleLabel.backgroundColor = ClearColor;
    self.titleLabel.textColor = WhiteColor;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [self.navigationController.navigationBar addSubview:self.titleLabel];
    
    //
    self.leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftButton.frame = CGRectMake(0, 0, 44, 44);
    [self.navigationController.navigationBar addSubview:self.leftButton];
    
    //
    self.rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightButton.frame = CGRectMake(ScreenWidth-44, 0, 44, 44);
    [self.navigationController.navigationBar addSubview:self.rightButton];
}

@end
