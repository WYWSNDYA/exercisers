//
//  ViewController.m
//  test1
//
//  Created by 闻飞 on 2017/6/20.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "Reachability.h"
#import "NetJudgeMent.h"
#import "DataStoreSource.h"
#import "loadViewViewController.h"
#define iOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0
#define kIphone6Width(w) ([UIScreen mainScreen].bounds.size.width / 375.0 * w)
#define kIphone6Height(h) ([UIScreen mainScreen].bounds.size.height / 667.0 * h)

typedef enum //定义一个常见的枚举类型
{
    
    playa = 1,
    playb = 2,
    playc = 3,
    
    
}assert;//枚举名字可直接在项目中应用这个枚举的类型值并将其应用到想要的类型中去完成这个类型的应用值类型

@implementation ViewController

-(UIButton *)againButton
{
    if (!_againButton) {
        
        _againButton=[[UIButton alloc]init];
        [self.view addSubview:_againButton];
        _againButton.backgroundColor =[UIColor redColor];
        [_againButton addTarget:self action:@selector(upToNext) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _againButton;
}
-(void)upToNext
{
    
    loadViewViewController * loadView =[[loadViewViewController alloc]init];
    
    [self presentViewController:loadView animated:YES completion:^{
        
        NSLog(@"ok");
    }];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NetJudgeMent judgeMentFromNet];
    
    [DataStoreSource creatTable];
    
    [DataStoreSource  insertData:@"222" age:5];
    
    
    [DataStoreSource deleFromTheForm:@"li1"];
    
    [DataStoreSource checkFromTheForm];
 
    
 /* AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        // 当网络状态改变时调用
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"切换到2g或者3g");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WIFI");
                break;
        }
    }];
    
    //开始监控
    [manager startMonitoring];
  
  */
    
 //通过af来监听网络的变化，个人感觉效果不是一般的厉害而是非常的厉害 可以学习
    
//    [[NSNotificationCenter defaultCenter]addObserver:self
//                                            selector:@selector(networkStateChange) name:kReachabilityChangedNotification object:nil];
//    
//    // 创建Reachability
//    Reachability *reachability = [Reachability reachabilityForInternetConnection];
//    
//    // 开始监控网络(一旦网络状态发生改变, 就会发出通知kReachabilityChangedNotification)
//    [reachability startNotifier];
//    
//    
    
    
  //ReachabilityStatus status = [GLobalRealReachability currentReachabilityStatus];
    
/*
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //NSMutableDictionary *parameters = @{@"":@"",@"":@""};
    
    [manager POST:@"http://test.tiaooo.com/interface/search/get_star" parameters:nil progress:^(NSProgress * _Nonnull uploadProgress) {
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        
        //NSLog(@">>>>>%@",responseObject);
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"11111111");
        
    }];
*/
    /*WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    [self.view addSubview:webView];*/
    
    
    //self.againButton =[[UIButton alloc]init];
    //[self.view addSubview:self.againButton];
    //self.againButton.backgroundColor = [UIColor redColor];
    self.againButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.againButton mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.top.equalTo(self.view.mas_top).offset(kIphone6Height(20));
        make.left.equalTo(self.view.mas_left).offset(kIphone6Width(20));
        make.bottom.equalTo(self.view.mas_bottom).offset(-kIphone6Height(20));
        make.width.mas_equalTo(kIphone6Width(250));
        
    }];
    
    /*[NSThread sleepForTimeInterval:2.0];
    
    WKWebView * wkWebView =[[WKWebView alloc]initWithFrame:self.view.bounds];
    
    wkWebView.UIDelegate=self;
    
    wkWebView.navigationDelegate = self;
    
    //[wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    
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
*/
}
//- (void)networkStateChange
//{
//    // 1.检测网络状态
//    Reachability *wifi = [Reachability reachabilityForLocalWiFi];
//    
//    // 2.检测手机是否能上网络
//    Reachability *connect = [Reachability reachabilityForInternetConnection];
//    
//    // 3.判断网络状态
//    if ([wifi currentReachabilityStatus] != NotReachable) {
//        NSLog(@"有wifi");
//    }
//    else if ([connect currentReachabilityStatus] != NotReachable) {
//        NSLog(@"使用手机自带网络进行上网");
//    }
//    else {
//        NSLog(@"没有网络");
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
    
    NSLog(@"wwwwwwwwwwww");
    
    
}

@end
