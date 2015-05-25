//
//  AnnimationView.m
//  Annimation
//
//  Created by tirostiros on 15/5/23.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "AnnimationView.h"

@implementation AnnimationView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //rect为这个view的frame
    NSLog(@"x:%f,y:%f,w:%f,h:%f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    
    //1将文字画到view上
//    UIColor * magentaColor = [UIColor redColor];
//    UIFont * helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15.0f];
//    NSString * myString = @"I Learn Really Fast";
//    [myString drawInRect:CGRectMake(0, 0, 200, 300)
//          withAttributes:@{NSFontAttributeName: helveticaBold,
//                           NSForegroundColorAttributeName: magentaColor
//                           }];
//    _myString = @"hello";
    //2自动更新ui
//    [_myString drawAtPoint:CGPointMake(10, 10)
//           withAttributes:@{NSFontAttributeName:helveticaBold,
//                            NSForegroundColorAttributeName:magentaColor}];
    
    //3绘制图片
//    UIImage *image = [UIImage imageNamed:@"test"];
//    [image drawAtPoint:CGPointMake(0, 0)];
//    [image drawInRect:CGRectMake(10, 10, 50, 50)];
    
    //4绘制险段
//    UIColor *lineColor = [UIColor redColor];
//    [lineColor set];
//    CGContextRef contex = UIGraphicsGetCurrentContext();
    //线宽
//    CGContextSetLineWidth(contex, 5);
    //直线交接点类型
//    CGContextSetLineJoin(contex, kCGLineJoinBevel);
//    CGContextSetLineJoin(contex, kCGLineJoinMiter);
//    CGContextSetLineJoin(contex, kCGLineJoinRound);
    //起点
//    CGContextMoveToPoint(contex, 10, 10);
    //线段上的点
//    CGContextAddLineToPoint(contex, 50, 50);
//    CGContextAddLineToPoint(contex, 90, 10);
    
    //绘制路径
//    CGContextStrokePath(contex);
    
    //5使用path绘制
//    UIColor *pathColor = [UIColor greenColor];
//    [pathColor set];
//    UIColor *fillColor = [UIColor blueColor];
//    [fillColor setFill];
//    //创建path，构建路径
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, NULL, 10, 10);
//    CGPathAddLineToPoint(path, NULL, 50, 50);
//    CGPathMoveToPoint(path, NULL, 50, 10);
//    CGPathAddLineToPoint(path, NULL, 10, 50);
//    CGRect rect1 = CGRectMake(10, 10, 40, 40);
//    CGRect rect2 = CGRectMake(50, 10, 40, 40);
//    CGRect rects[2] = {rect1, rect2};
//
//    CGPathAddRect(path, NULL,rect1);
//    CGPathAddRects(path, NULL, rects, 2);
//    
//    CGContextRef contex = UIGraphicsGetCurrentContext();
//    CGContextAddPath(contex, path);
//    CGContextDrawPath(contex,kCGPathEOFillStroke);
////    CGContextStrokePath(contex);
//    //释放资源
//    CGPathRelease(path);
//
    
    //6添加阴影
//    UIColor *rectColor = [UIColor greenColor];
//    [rectColor setFill];
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddRect(path, NULL, CGRectMake(10, 10, 50, 50));
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //保存一下，绘制完成恢复，不影响其他绘制
//    CGContextSaveGState(context);
//    CGContextAddPath(context, path);
//    
//    CGContextSetShadowWithColor(context, CGSizeMake(2, 2), 1, [[UIColor blueColor] CGColor]);
//    CGContextDrawPath(context, kCGPathFillStroke);
//    
////    CGContextStrokePath(context);
//    //绘制绘制contex
//    CGContextRestoreGState(context);
//    CGPathRelease(path);
    
    //7绘制渐变
//    UIColor *startColor = [UIColor redColor];
//    const CGFloat *startComents = CGColorGetComponents([startColor CGColor]);
//    UIColor *endColor = [UIColor blueColor];
//    const CGFloat *endComents = CGColorGetComponents([endColor CGColor]);
//    const CGFloat comments[8] = {startComents[0],startComents[1],startComents[2],startComents[3],endComents[0],endComents[1],endComents[2],endComents[3]};
//    
//    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
//    
//    CGFloat locations[2] = {0.0f,1.0f};
//    
//    CGGradientRef grand =  CGGradientCreateWithColorComponents(space, comments, locations, 2);
//    
//    
//    CGColorSpaceRelease(space);
//    
//    CGPoint startPoint = CGPointMake(10, 0);
//    CGPoint endPoint = CGPointMake(50, 50);
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextDrawLinearGradient(context, grand, startPoint, endPoint, 0);
    
    //8平移，伸缩，旋转
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGRect myRect = CGRectMake(50, 50, 50, 50);
//    CGAffineTransform trans = CGAffineTransformMakeTranslation(20, 20);
//    CGAffineTransform trans = CGAffineTransformMakeRotation(M_2_PI);
    CGAffineTransform trans = CGAffineTransformMakeScale(2.0, 1.0);
    CGPathAddRect(path, &trans, myRect);
    
    UIColor *lineColor = [UIColor redColor];
    [lineColor set];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddPath(context, path);
    CGContextDrawPath(context, kCGPathEOFillStroke);
    
}

//设置文字时自动更新ui
- (void)setMyString:(NSString *)myString{
    _myString = myString;
    [self setNeedsDisplay];
}


@end
