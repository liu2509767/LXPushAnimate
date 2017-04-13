//
//  LXPushAnimate.m
//  跳转动画的封装
//
//  Created by LiuXin on 2017/3/8.
//  Copyright © 2017年 LiuXin. All rights reserved.
//

#import "LXPushAnimate.h"

@implementation LXPushAnimate
+(CATransition *)getAnimation:(NSInteger)intger withDirection:(NSInteger)dir
{
    CATransition *animation =[CATransition animation];
  
    //动画时常
    animation.duration = 0.7;
    switch (intger) {
        case 0:
            //淡入淡出
            animation.type = kCATransitionFade;
            break;
        case 1:
            //推挤
            animation.type = kCATransitionPush;
            break;
        case 2:
            //揭开
            animation.type = kCATransitionReveal;
            break;
        case 3:
            //覆盖
            animation.type = kCATransitionMoveIn;
            break;
        case 4:
            //立方体
            animation.type = @"cube";
            break;
        case 5:
            //吮吸
            animation.type = @"suckEffect";
            break;
        case 6:
            //翻转
            animation.type = @"oglFlip";
            break;
        case 7:
            //波纹
            animation.type = @"rippleEffect";
            break;
        case 8:
            //翻页
            animation.type = @"pageCurl";
            break;
        case 9:
            //反翻页
            animation.type = @"pageUnCurl";
            break;
        case 10:
            //开镜头
            animation.type = @"cameraIrisHollowOpen";
            break;
        case 11:
            //关镜头
            animation.type = @"cameraIrisHollowClose";
            break;
        default:
            break;
    }
    
    //TODO: 在这里可以手动选择 0-4的动画效果  我默认选择0  下面注释掉的这个方法是随机获取一个
    //    int i = (int)rand()%4;
//    int i = 1;
    //运动方向
    switch (dir) {
            
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    return animation;
}

@end
