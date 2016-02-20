//
//  ModalPopover.m
//  Popover-demo
//
//  Created by 依山观澜 on 16/1/3.
//  Copyright © 2016年 依山观澜. All rights reserved.
/*
 实现协议
 
 */

#import "ModalPopover.h"

@implementation ModalPopover
//动画时间
-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{

    return 0.25;
}
//modal动画
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    //获取到需要modal的控制器
    UIView *toview=[transitionContext viewForKey:UITransitionContextToViewKey];
    //将需要modal的控制器的view添加到容器视图
    [[transitionContext containerView]addSubview:toview];
    toview.transform=CGAffineTransformMakeScale(1, 0);//缩放比例
    toview.layer.anchorPoint=CGPointMake(0.5, 0.0);//顶部中心点
    //动画缩放的modal控制器的view到正常大小
    [UIView animateWithDuration:[self transitionDuration:nil] delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:2 options:0
 animations:^{
     toview.transform=CGAffineTransformIdentity;//还原
 } completion:^(BOOL finished) {
     [transitionContext completeTransition:YES];//这个方法转场完成一定要调用
 }];
}
@end
