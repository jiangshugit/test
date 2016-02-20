//
//  LCPresentationController.m
//  Popover-demo
//
//  Created by 依山观澜 on 16/1/3.
//  Copyright © 2016年 依山观澜. All rights reserved.
/*创建容器视图*/

#import "LCPresentationController.h"
#define Kscreen [UIScreen mainScreen].bounds.size.width
@implementation LCPresentationController
//容器视图将布局子视图
-(void)containerViewWillLayoutSubviews{
    [super containerViewWillLayoutSubviews];
    //设置容器视图的背景
    self.containerView.backgroundColor=[UIColor clearColor];
    //呈现的视图大小
    self.containerView.frame=CGRectMake((Kscreen-200)*0.5, 76, 200, 300);
    //添加手势
    UITapGestureRecognizer *tag=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissview)];
    //添加手势到容器
    [self.containerView addGestureRecognizer:tag];
}
//手势隐藏 容器控制器
-(void)dismissview{

    [self.presentedViewController dismissViewControllerAnimated:NO completion:nil];
}
@end
