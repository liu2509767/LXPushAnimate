//
//  ViewController.m
//  跳转动画的封装
//
//  Created by LiuXin on 2017/3/8.
//  Copyright © 2017年 LiuXin. All rights reserved.
//

#import "ViewController.h"
#import "LXPushAnimate.h"
#import "secondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"进入下一页" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self.view setBackgroundColor:[UIColor grayColor]];
}
-(void)buttonAction
{
    secondViewController * svc = [[secondViewController alloc]init];
    [self.navigationController pushViewController:svc animated:NO];
//    CATransition *animate =[LXPushAnimate getAnimation:8 withDirection:1];
//    [self.navigationController.view.layer addAnimation:animate forKey:nil];
    CATransition * animate = [CATransition animation];
    animate.type = @"Cube";
    animate.duration = 0.7;
    animate.subtype = kCATransitionFromLeft;
    [self.navigationController.view.layer addAnimation:animate forKey:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
