//
//  ViewController.m
//  GuidePage
//
//  Created by shining3d on 16/6/8.
//  Copyright © 2016年 shining3d. All rights reserved.
//

#import "ViewController.h"
#import "ZLCGuidePageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //引导页图片数组
    NSArray *images =  @[[UIImage imageNamed:@"image1.jpg"],[UIImage imageNamed:@"image2.jpg"],[UIImage imageNamed:@"image3.jpg"],[UIImage imageNamed:@"image4.jpg"],[UIImage imageNamed:@"image5.jpg"]];
    //创建引导页视图
    ZLCGuidePageView *pageView = [[ZLCGuidePageView alloc]initWithFrame:self.view.frame WithImages:images];
    [self.view addSubview:pageView];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
