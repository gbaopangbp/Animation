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
    
    //将文字画到view上
    UIColor * magentaColor = [UIColor redColor];
    UIFont * helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15.0f];
    NSString * myString = @"I Learn Really Fast";
//    [myString drawInRect:CGRectMake(0, 0, 200, 300)
//          withAttributes:@{NSFontAttributeName: helveticaBold,
//                           NSForegroundColorAttributeName: magentaColor
//                           }];
    [myString drawAtPoint:CGPointMake(10, 10)
           withAttributes:@{NSFontAttributeName:helveticaBold,
                            NSForegroundColorAttributeName:magentaColor}];
}


@end
