//
//  ViewController.m
//  test1
//
//  Created by 闻飞 on 2017/6/20.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#define iOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
typedef enum //定义一个常见的枚举类型
{
    
    playa = 1,
    playb = 2,
    playc = 3,
    
    
}assert;//枚举名字可直接在项目中应用这个枚举的类型值并将其应用到想要的类型中去完成这个类型的应用值类型

@interface ViewController()

@end//扩展这个类的一系列的属性以及方法


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    /*WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    [self.view addSubview:webView];*/
    
    
    [NSThread sleepForTimeInterval:2.0];
    
    WKWebView * wkWebView =[[WKWebView alloc]initWithFrame:self.view.bounds];
    
    wkWebView.UIDelegate=self;
    
    wkWebView.navigationDelegate = self;
    
    [wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    
    [self.view addSubview:wkWebView];//去使用wkwebview代替webview
    
    
    NSLog(@">>>%f",[[[UIDevice currentDevice]systemVersion]floatValue]);
    
    
    if (iOS8) {
        NSLog(@"ios8之后的操作");
    }else{
        
        NSLog(@"ios8之前的操作");
        
    }
    
    if ([self is64bit]) {
        NSLog(@"这是一位64的操作系统");
    }else
    {
        
        NSLog(@"nitm的又在骗我去死吧 sb");
        
        
    }
   
    // Do any additional setup after loading the view, typically from a nib.
}





- (BOOL)is64bit
{
    
#if defined(__LP64__) && __LP64__
    
    return YES;
    
    
#else
    
    return NO;
    
#endif
    
}

-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    
    NSLog(@"wwwwwww");
    
}

// 当内容开始返回时调用
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    
    
    
}
// 页面加载完成之后调用
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    
     NSLog(@"这是一个加载成功的展示效果");
    
}
// 页面加载失败时调用
-(void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
    

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
    
    NSLog(@"wwwwwwwwwwww");
    
    
}

@end
