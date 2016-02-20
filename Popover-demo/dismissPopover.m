//
//  dismissPopover.m
//  Popover-demo
//
//  Created by 依山观澜 on 16/1/3.
//  Copyright © 2016年 依山观澜. All rights reserved.
//

#import "dismissPopover.h"

@implementation dismissPopover
-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.25;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    //获得要隐藏的视图
    UIView *fromView=[transitionContext viewForKey:UITransitionContextFromViewKey];
    //动画隐藏
    [UIView animateWithDuration:[self transitionDuration:nil] delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:2 options:0 animations:^{
        fromView.transform=CGAffineTransformMakeScale(1, 0.001);
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];//这个方法转场完成一定要调用
    }];

}
@end
