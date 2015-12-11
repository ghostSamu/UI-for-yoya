//
//  LoginViewController.h
//  UI
//
//  Created by YANGLEILEI on 15/12/9.
//  Copyright (c) 2015年 YANGLEILEI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackgroundView.h"

@interface LoginViewController : UIViewController


@property (nonatomic, strong) UIImageView *headImage;
@property (nonatomic, strong) BackgroundView *backgroundView;
@property (nonatomic, strong) UITextField *userName;
@property (nonatomic, strong) UITextField *password;
@property (nonatomic, strong) UIButton *registeredButton;
@property (nonatomic, strong) UIButton *retrieveButton;


@property (nonatomic, strong) UIView *accountBoxView;
@property (nonatomic, strong) UIView *accountView;
@property (nonatomic, strong) UIView *passwordView;
@property (nonatomic, strong) UIButton *pulldownButton;
@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UIScrollView *showHeadimage;

@end