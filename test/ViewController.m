//
//  ViewController.m
//  test
//
//  Created by xxfwangqp on 2018/5/24.
//  Copyright © 2018年 wangqp. All rights reserved.
//

#import "ViewController.h"
#import "TZImagePickerController.h"
#import "CodeCheckViewController.h"
#import "JiSuanQI.h"
@interface ViewController ()

@property (nonatomic, strong) JiSuanQI *qu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    bgView.backgroundColor = [UIColor whiteColor];
    CAShapeLayer *borderLayer = [CAShapeLayer layer];
    borderLayer.bounds = CGRectMake(0, 0, 100, 100);
    borderLayer.position = CGPointMake(CGRectGetMidX(bgView.bounds), CGRectGetMidY(bgView.bounds));
    
        borderLayer.path = [UIBezierPath bezierPathWithRect:borderLayer.bounds].CGPath;
//    borderLayer.path = [UIBezierPath bezierPathWithRoundedRect:borderLayer.bounds cornerRadius:1].CGPath;
    borderLayer.lineWidth = 1. / [[UIScreen mainScreen] scale];
    //虚线边框
    borderLayer.lineDashPattern = @[@8, @8];
    //实线边框
    //    borderLayer.lineDashPattern = nil;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    borderLayer.strokeColor = [UIColor redColor].CGColor;
    [bgView.layer addSublayer:borderLayer];
    
    [self.view addSubview:bgView];

//    qu.add(5).add(10.6).deletes(4.4);
//    NSLog(@"---%.2f----",  qu.reslut);
    JiSuanQI *qu = [[JiSuanQI alloc] init];
    self.qu = qu;
    [qu addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
//    NSLog(@"--%ld", (long)self.test(5));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    _qu.age ++;
    _qu->_age += 1;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"----age===%d", _qu.age);
}

//- (NSInteger(^)(NSInteger))test{
//    return  ^(NSInteger value){
//        return value;
//    };
//}

- (void)btnClick{
    CodeCheckViewController *vc = [CodeCheckViewController new];
    vc.phoneString = @"13075818637";
    [self.navigationController pushViewController:vc animated:YES];
    
//    TZImagePickerController *pick = [[TZImagePickerController alloc] initWithMaxImagesCount:2 delegate:self];
//    pick.maxImagesCount = 1;
//    pick.allowPickingGif = NO;
//    pick.allowPickingVideo = NO;
//    [self presentViewController:pick animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
