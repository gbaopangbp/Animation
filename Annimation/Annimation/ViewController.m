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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AnnimationView *view = [[AnnimationView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
