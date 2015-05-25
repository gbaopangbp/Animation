//
//  ViewController.m
//  Annimation
//
//  Created by tirostiros on 15/5/23.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "ViewController.h"
#import "AnnimationView.h"

@interface ViewController ()

@end

@implementation ViewController

//列举font family和所有的字体名
- (void) enumFontFamily{
    for (NSString *familyName in [UIFont familyNames]) {
        NSLog(@"%@",familyName);
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"\t%@",fontName);
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //列举所有的字体族和字体名
    [self enumFontFamily];
    
    
    
    AnnimationView *view = [[AnnimationView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:view];
    view.myString = @"world";
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        view.myString = @"3ssss";
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
