//
//  LXPushAnimate.h
//  跳转动画的封装
//
//  Created by LiuXin on 2017/3/8.
//  Copyright © 2017年 LiuXin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
@interface LXPushAnimate : NSObject
+(CATransition *)getAnimation:(NSInteger)intger withDirection:(NSInteger)dir;
@end
