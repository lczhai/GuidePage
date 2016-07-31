[TOC]
#      GuidePage       
-----    

###  简单的ios引导页集成，（给大家提供一个框子，可定制高）省去累赘代码，直接使用或者优化即可....
 
 
 
 

##### 1、将项目中的”ZLCGuidePage“文件夹拖入自己的工程，并在自己的视图导入头文件#import "ZLCGuidePageView.h"

#####  2、两行代码加载完成引导页(使用时候只要替换掉图片数组中的图片即可)
 <p>
 
 //引导页图片数组 
 
 ``` objectivec
 NSArray *images =  @[[UIImage imageNamed:@"image1.jpg"],[UIImage imageNamed:@"image2.jpg"],[UIImage imageNamed:@"image3.jpg"],[UIImage imageNamed:@"image4.jpg"],[UIImage imageNamed:@"image5.jpg"]];
 ```
 
 //创建引导页视图
 
 ```objectivec
 ZLCGuidePageView *pageView = [[ZLCGuidePageView alloc]initWithFrame:self.view.frame WithImages:images];
 [self.view addSubview:pageView];
 ```
 
 
 
 
 
 ###使用代码及场景
 ######请将GuidePage添加到项目根视图上
 
 
 ```objectivec
 //判断是否为第一次启动，若为第一次启动这执行引导页
 if(![[NSUserDefaults standardUserDefaults] boolForKey:@"firstStart"]){
 [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstStart"];
 NSArray *arr =  @[[UIImage imageNamed:@"image1.jpg"],[UIImage imageNamed:@"image2.jpg"],[UIImage imageNamed:@"image3.jpg"],[UIImage imageNamed:@"image4.jpg"],[UIImage imageNamed:@"image5.jpg"]];
 
 ZLCGuidePageView *pageView = [[ZLCGuidePageView alloc]initWithFrame:self.view.frame WithImages:arr];
 //注意若项目是以navigationController为根视图，请讲guidepage添加在根视图view上
 [self.navigationController.view addSubview:pageView];
	}
 ```
 
 
 
