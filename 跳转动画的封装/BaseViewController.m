//
//  BaseViewController.m
//  跳转动画的封装
//
//  Created by LiuXin on 2017/3/8.
//  Copyright © 2017年 LiuXin. All rights reserved.
//

#import "BaseViewController.h"
#import "LXPushAnimate.h"
//获取设备版本
#define IOS_7 [[UIDevice currentDevice].systemVersion floatValue] >= 7.0
@interface BaseViewController()

@end
@implementation BaseViewController
@synthesize leftButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    //布局
    if (IOS_7) {
        if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        {
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    //nav
    UIImage * backgroundImage = [UIImage imageNamed:@"navgationbar"];
    UIColor * color = [UIColor colorWithPatternImage:backgroundImage];
    [self.navigationController.navigationBar setTranslucent:YES];
    self.navigationController.navigationBar.barTintColor = color;
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:19],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
 
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleDefault;
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    //返回
    leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton addTarget:self action:@selector(leftButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"返回.png"] forState:UIControlStateNormal];
    leftButton.frame = CGRectMake(10 ,5 ,40 ,40 );
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftItem;
    leftButton.hidden = NO;
    
}
-(void)leftButtonAction:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    CATransition *animate =[LXPushAnimate getAnimation:9 withDirection:1];
    [self.navigationController.view.layer addAnimation:animate forKey:nil];

}
@end
