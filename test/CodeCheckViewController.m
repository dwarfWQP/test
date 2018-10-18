//
//  CodeCheckViewController.m
//  test
//
//  Created by xxfwangqp on 2018/8/1.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import "CodeCheckViewController.h"
#import "Masonry.h"

@interface CodeCheckViewController ()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIView *bgView;

@property (nonatomic, strong) UILabel *phoneLabel;

@property (nonatomic, strong) UILabel *phoneContentLabel;

@property (nonatomic, strong) UIView *lineView;

@property (nonatomic, strong) UIView *bgView2;

@property (nonatomic, strong) UILabel *codeLabel;

@property (nonatomic, strong) UIView *lineView2;

@property (nonatomic, strong) UITextField *codeTextField;

@property (nonatomic, strong) UIButton *submitButton;

@end

@implementation CodeCheckViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupInit];
}

- (void)setupInit {
    self.view.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.bgView];
    [self.bgView addSubview:self.phoneLabel];
    [self.bgView addSubview:self.phoneContentLabel];
    [self.view addSubview:self.lineView];
    [self.view addSubview:self.bgView2];
    [self.bgView2 addSubview:self.codeLabel];
    [self.bgView2 addSubview:self.lineView2];
    [self.bgView2 addSubview:self.codeTextField];
    [self.view addSubview:self.submitButton];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(21);
        make.top.equalTo(self.view).with.offset(17+64);
        make.right.equalTo(self.view).with.offset(-21);
        make.height.mas_equalTo(16);
    }];
    
    [_bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(47 + 64);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(44);
    }];
    
    [_phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bgView);
        make.left.equalTo(self.bgView).with.offset(15);
        make.height.equalTo(@16);
        make.width.equalTo(@49);
    }];
    
    [_phoneContentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bgView);
        make.left.equalTo(self.bgView).with.offset(115);
        make.right.equalTo(self.bgView).with.offset(-15);
        make.height.equalTo(@16);
    }];
    
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(47 + 64 + 44);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.equalTo(@1);
    }];
    
    [_bgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lineView).offset(1);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.equalTo(@44);
    }];
    
    [_codeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bgView2);
        make.left.equalTo(self.bgView2).with.offset(15);
        make.height.equalTo(@16);
        make.width.equalTo(@48);
    }];
    
    [_lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgView2);
        make.left.equalTo(self.bgView2).with.offset(104);
        make.height.equalTo(@44);
        make.width.equalTo(@1);
    }];
    
    [_codeTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bgView2);
        make.left.equalTo(self.bgView2).with.offset(115);
        make.right.equalTo(self.bgView2).with.offset(-15);
        make.height.equalTo(@44);
    }];
    
    [_submitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(64 + 169);
        make.left.equalTo(self.view).with.offset(30);
        make.right.equalTo(self.view).with.offset(-30);
        make.height.equalTo(@44);
    }];
    self.submitButton.layer.shadowColor = [[UIColor colorWithRed:41.9994/255.0 green:97.9985/255.0 blue:255/255.0 alpha:0.36] CGColor];
    self.submitButton.layer.shadowOffset = CGSizeMake(0, 0);
    self.submitButton.layer.shadowOpacity = 1;
    _submitButton.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(-2, -1, [UIScreen mainScreen].bounds.size.width-60, 44)].CGPath;
}

#pragma mark - get
- (UIView *)bgView2{
    if (!_bgView2) {
        _bgView2 = [[UIView alloc] init];
        _bgView2.backgroundColor = [UIColor whiteColor];
    }
    return _bgView2;
}

- (UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc] init];
        _bgView.backgroundColor = [UIColor whiteColor];
    }
    return _bgView;
}

- (UIButton *)submitButton{
    if (!_submitButton) {
        _submitButton = [[UIButton alloc] init];
        [_submitButton setTitle:@"提交" forState:UIControlStateNormal];
        [_submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _submitButton.titleLabel.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:17];
        _submitButton.backgroundColor = [UIColor colorWithRed:41.9994/255.0 green:97.9985/255.0 blue:255/255.0 alpha:1];
    }
    return _submitButton;
}

- (UITextField *)codeTextField{
    if (!_codeTextField) {
        _codeTextField = [[UITextField alloc] init];
        _codeTextField.keyboardType = UIKeyboardTypeNumberPad;
        _codeTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _codeTextField.placeholder = @"请输入验证码";
        [_codeTextField setValue:[UIColor colorWithRed:177.001/255.0 green:191.997/255.0 blue:199.002/255.0 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
        _codeTextField.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:16];
        _codeTextField.textColor = [UIColor colorWithRed:39.9993/255.0 green:51.0026/255.0 blue:57.0027/255.0 alpha:1];
        
    }
    return _codeTextField;
}

- (UIView *)lineView2{
    if (!_lineView2) {
        _lineView2 = [[UIView alloc] init];
        _lineView2.backgroundColor = [UIColor colorWithRed:225.997/255.0 green:227/255.0 blue:231.996/255.0 alpha:1];
    }
    return _lineView2;
}

- (UIView *)lineView{
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor colorWithRed:225.997/255.0 green:227/255.0 blue:231.996/255.0 alpha:1];
    }
    return _lineView;
}

- (UILabel *)codeLabel{
    if (!_codeLabel) {
        _codeLabel = [[UILabel alloc] init];
        _codeLabel.text = @"验证码";
        _codeLabel.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:16];
        _codeLabel.textColor = [UIColor colorWithRed:39.9993/255.0 green:51.0026/255.0 blue:57.0027/255.0 alpha:1];
    }
    return _codeLabel;
}

- (UILabel *)phoneContentLabel{
    if (!_phoneContentLabel) {
        _phoneContentLabel = [[UILabel alloc] init];
        _phoneContentLabel.text = [NSString stringWithFormat:@"+86 %@", self.phoneString];
        _phoneContentLabel.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:16];
        _phoneContentLabel.textColor = [UIColor colorWithRed:153.003/255.0 green:153.003/255.0 blue:153.003/255.0 alpha:1];
    }
    return _phoneContentLabel;
}

- (UILabel *)phoneLabel{
    if (!_phoneLabel) {
        _phoneLabel = [[UILabel alloc] init];
        _phoneLabel.text = @"手机号";
        _phoneLabel.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:16];
        _phoneLabel.textColor = [UIColor colorWithRed:153.003/255.0 green:153.003/255.0 blue:153.003/255.0 alpha:1];
    }
    return _phoneLabel;
}

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"短信验证码已发出，请填写验证码";
        _titleLabel.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:16];
        _titleLabel.textColor = [UIColor colorWithRed:153.003/255.0 green:153.003/255.0 blue:153.003/255.0 alpha:1];
    }
    return _titleLabel;
}

@end
