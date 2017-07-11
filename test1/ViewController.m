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
#import "shareAlongton.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <AMapSearchKit/AMapSearchKit.h>
#import <AMapLocationKit/AMapLocationKit.h>
#import "DianYuFa.h"
#import "TT__Show.h"
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
        //_againButton.backgroundColor =[UIColor redColor];
        [_againButton addTarget:self action:@selector(upToNext) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _againButton;
}
-(void)upToNext
{
    
    if (_delagete&&[_delagete respondsToSelector:@selector(printName:)]) {
        
        loadViewViewController * loadView =[[loadViewViewController alloc]init];
        
        [self presentViewController:loadView animated:YES completion:^{
            
            NSLog(@"ok");
        }];

    
    [_delagete respondsToSelector:@selector(printName:)];
    
        
    }
        
    [self.manaGer
     stopUpdatingLocation];// 这个是为了去停止整个定位效果的
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.manaGer =[[AMapLocationManager alloc]init];
//    
//    self.manaGer.delegate=self;
//    
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9) {
//        self.manaGer.allowsBackgroundLocationUpdates = YES;
//    }
//    //开始持续定位
//    [self.manaGer startUpdatingLocation];
//    
//    [self.manaGer setLocatingWithReGeocode:YES];
//    [self.manaGer startUpdatingLocation];
//    
    
    
    NSLog(@"%@",TT__ShowData(@"11",@"22"));
    
//    DianYuFa * dianFa = [[DianYuFa alloc]init];
//
//    [dianFa setPickShow:@"aaaaa"];
//    
//    NSString * pop = dianFa.pickShow;
//    
//    
//    NSLog(@"%@",pop);
//    
//    
//    
//    [self configLocationManager];
//    
//    
//    [self locateAction];
//    
//    shareAlongton * oneAlong2 = [shareAlongton shareTools];
//     shareAlongton * oneAlong3 = [shareAlongton shareTools];
//     shareAlongton * oneAlong4 = [shareAlongton shareTools];
//    
//    [oneAlong2 printNameAndInt];
//    
//    oneAlong2.a = 1;
//    oneAlong2.copydRight = @"goodThing";
//    
//    
//    
//    
//    [NetJudgeMent judgeMentFromNet];
//    
//    [DataStoreSource creatTable];
//    
//    [DataStoreSource  insertData:@"222" age:5];
//    
//    
//    [DataStoreSource deleFromTheForm:@"li1"];
//    
//    [DataStoreSource checkFromTheForm];
//    
//    
//    self.SkfFPSLabel = [[SKFFPSLabel alloc]init];
//    self.SkfFPSLabel.frame = CGRectMake(40, 354, 50, 30);
//    //    _SkfFPSLabel setb
//    [self.view addSubview:self.SkfFPSLabel];
//    [self.view bringSubviewToFront:self.SkfFPSLabel];
// 
//    
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


#pragma mark    开启FPS监测的方法
#pragma mark    关闭FPS监测方法
-(void)closeTheFPSLabel{
    [self.SkfFPSLabel SKFFPSstopDisplayLink];
    self.SkfFPSLabel = nil;
}
- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateLocation:(CLLocation *)location reGeocode:(AMapLocationReGeocode *)reGeocode
{
    //NSLog(@"location:{lat:%f; lon:%f; accuracy:%f}", location.coordinate.latitude, location.coordinate.longitude, location.horizontalAccuracy);
    
}
- (void)configLocationManager
{
    self.manaGer = [[AMapLocationManager alloc] init];
    
    [self.manaGer setDelegate:self];
    
    [self.manaGer setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    
    [self.manaGer setLocationTimeout:6];
    
    [self.manaGer setReGeocodeTimeout:3];
}

- (void)locateAction
{
    //带逆地理的单次定位
    [self.manaGer requestLocationWithReGeocode:YES completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
        
        if (error)
        {
            //NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
            
            if (error.code == AMapLocationErrorLocateFailed)
            {
                return;
            }
        }
        
        //定位信息
        NSLog(@"location:%@", location);
        
        //逆地理信息
        if (regeocode)
        {
            //NSLog(@"reGeocode:%@", regeocode);
        }
    }];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
    
   // NSLog(@"wwwwwwwwwwww");
    
    
}

@end
