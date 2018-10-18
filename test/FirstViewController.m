//
//  FirstViewController.m
//  test
//
//  Created by xxfwangqp on 2018/9/26.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import "FirstViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface FirstViewController ()

@property (nonatomic, strong) AVCaptureSession *captureSession;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //捕捉会话
    [self setupSession];
    
    //输入对象
    [self setupInput];
}

- (void)setupSession {
    AVCaptureSession *captureSession = [[AVCaptureSession alloc] init];
    _captureSession = captureSession;
    captureSession.sessionPreset = AVCaptureSessionPreset1280x720;
}

- (void)setupInput{
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
