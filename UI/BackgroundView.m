//
//  BackgroundView.m
//  UI
//
//  Created by YANGLEILEI on 15/12/9.
//  Copyright (c) 2015年 YANGLEILEI. All rights reserved.
//

#import "BackgroundView.h"

@implementation BackgroundView


- (void)drawRect:(CGRect)rect{

    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context,5);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 5, 50);
    CGContextAddLineToPoint(context,self.frame.size.width-5, 50);
    CGContextClosePath(context);
    [[UIColor grayColor] setStroke];
    CGContextStrokePath(context);
}


////设置粗细
//CGContextSetLineWidth(context,0.2);
////开始绘图
//CGContextBeginPath(context);
////移动到开始绘图点
//CGContextMoveToPoint(context, 5, 50);
////移动到第二个点
//CGContextAddLineToPoint(context,self.frame.size.width-5, 50);
////关闭路径
//CGContextClosePath(context);
////设置颜色
//[[UIColor grayColor] setStroke];
////绘图
//CGContextStrokePath(context);


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
