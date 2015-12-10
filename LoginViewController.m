//
//  LoginViewController.m
//  UI
//
//  Created by YANGLEILEI on 15/12/9.
//  Copyright (c) 2015年 YANGLEILEI. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:253/255.0 green:220/255.0 blue:140/255.0 alpha:1];
    //头像
    self.headImage.backgroundColor = [UIColor blackColor];
    self.headImage = [[UIImageView alloc] init];
    [self.headImage setFrame:CGRectMake(138, 70, 100, 100)];
    [self.headImage setImage:[UIImage imageNamed:@"user-header.png"]];
    self.headImage.layer.cornerRadius = self.headImage.frame.size.width / 2;
    self.headImage.clipsToBounds = YES;
    self.headImage.layer.borderWidth = 3.0f;//边框
    self.headImage.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.view addSubview:self.headImage];
    //账号
    _accountView = [[UIView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50)];
    self.userName = [[UITextField alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50)];
    self.userName.clearButtonMode = UITextFieldViewModeAlways;
    self.userName.backgroundColor = [UIColor whiteColor];
    self.userName.placeholder = [NSString stringWithFormat:@"账号"];
    [_accountView addSubview:_userName];
    [self.view addSubview: self.accountView];
    //密码
    self.passwordView = [[UIView alloc] initWithFrame:CGRectMake(0, 250, self.view.frame.size.width, 50)];
    self.password = [[UITextField alloc] initWithFrame:CGRectMake(0, 250, self.view.frame.size.width, 50)];
    self.password.clearButtonMode = UITextFieldViewModeAlways;
    //self.password.layer.cornerRadius = 5.0f;
    self.password.backgroundColor = [UIColor whiteColor];
    self.password.placeholder = [NSString stringWithFormat:@"密码"];
    [_passwordView addSubview:_password];
    [self.view addSubview:self.passwordView];
    //下拉按钮
    
    //loginbutton
    self.loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.loginButton setFrame:CGRectMake(40, 320, self.view.frame.size.width - 80, 50)];
    self.loginButton.layer.cornerRadius = 5.0f;
    [self.loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.loginButton setBackgroundColor:[UIColor colorWithRed:144/255.0 green:188/255.0 blue:95/255.0 alpha:1]];
    [self.view addSubview:self.loginButton];
    //注册账号
    self.registeredButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.registeredButton setFrame:CGRectMake(20, 360, 80, 100)];
    [self.registeredButton setTitle:@"注册账号" forState:UIControlStateNormal];
    [self.registeredButton setTitleColor:[UIColor colorWithRed:166/255.0 green:132/255.0 blue:33/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:self.registeredButton];
    //忘记密码
    self.retrieveButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.retrieveButton setFrame:CGRectMake(280, 360, 80, 100)];
    [self.retrieveButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [self.retrieveButton setTitleColor:[UIColor colorWithRed:166/255.0 green:132/255.0 blue:33/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:self.retrieveButton];

    
    // Do any additional setup after loading the view from its nib.
    
    [UIView animateWithDuration:0.8 animations:^{
        //上移值
        CGFloat upValue = 200.0;
        //上移accountFrame
        CGRect accountFrame = _accountView.frame;
        accountFrame.origin.y = accountFrame.origin.y - upValue;
        _accountView.frame = accountFrame;
        //上移passwordView
        CGRect passwordFrame = _passwordView.frame;
        passwordFrame.origin.y = passwordFrame.origin.y - upValue;
        _accountView.frame = passwordFrame;
        //上移loginButton
        CGRect loginButtonFrame = _loginButton.frame;
        loginButtonFrame.origin.y = loginButtonFrame.origin.y - upValue;
        _accountView.frame = loginButtonFrame;
    }];
    
    
    
}
//隐藏键盘
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.password resignFirstResponder];
}

- (void)showAccountBox :(UIButton *)sender{

    if (sender.selected) {
        
        [UIView animateWithDuration:0.8 animations:^{
            //隐藏box
            _accountBoxView.hidden = true;
            //上移密码组
            CGRect passwordFrame = _passwordView.frame;
            passwordFrame.origin.y = passwordFrame.origin.y - 82.0;
            _passwordView.frame = passwordFrame;
            //上移登录按钮
            CGRect loginButton = _loginButton.frame;
            loginButton.origin.y = loginButton.origin.y - 82.0;
            _loginButton.frame = loginButton;
        }];
    }else{
    
        [UIView animateWithDuration:0.8 animations:^{
            //显示box
            _accountBoxView.hidden = false;
            //下移密码组
            CGRect passwordFrame = _passwordView.frame;
            passwordFrame.origin.y = passwordFrame.origin.y + 82.0;
            _passwordView.frame = passwordFrame;
            //下移登录按钮
            CGRect loginButton = _loginButton.frame;
            loginButton.origin.y = loginButton.origin.y + 82.0;
            _loginButton.frame = loginButton;

        }];
    }
    
    BOOL selectedState = _loginButton.selected;
    if (selectedState == true) {
        _loginButton.selected = false;
    }else{
        _loginButton.selected = true;
    }
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
