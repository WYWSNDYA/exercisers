//
//  loadViewViewController.m
//  test1
//
//  Created by 闻飞 on 2017/7/3.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "loadViewViewController.h"
#import "SKFFPSLabel.h"
#import "ViewController.h"
typedef int(^SayHello)(int a, int b);
@interface loadViewViewController ()<nameAsscoate>
@property(nonatomic,weak)SayHello sayWord;
@end

@implementation loadViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController * viewShell = [[ViewController alloc]init];
    
    
    viewShell.delagete = self;
    
    
    
    NSLog(@"tttttt");
    
    /*self.urlArray = @[@"https://wkbos.bdimg.com/v1/wenku57//7b98301a2adf38c28ee0aef8921fda17?responseContentDisposition=attachment%3B%20filename%3D%22IOS%BF%AA%B7%A2%BB%B7%BE%B3%B4%EE%BD%A8%BA%CD%BC%F2%B5%A5%CA%B5%C0%FD.pdf%22&responseContentType=application%2Foctet-stream&responseCacheControl=no-cache&authorization=bce-auth-v1%2Ffa1126e91489401fa7cc85045ce7179e%2F2017-04-10T06%3A38%3A37Z%2F3600%2Fhost%2Feb0754e1d269be0ad50c2ebe78cf8f78ad065150edecfd731234e5374e7e5f84&token=da145c19277039627bf70015d9f111815fe86364ba0c387344f3b5d528a7f56b&expire=2017-04-10T07:38:37Z",
                      @"https://wkbos.bdimg.com/v1/wenku39//1d6911332cc6d657237bb02776868e05?responseContentDisposition=attachment%3B%20filename%3D%22iOS%BF%AA%B7%A2%D1%A7%CF%B0-%C8%E7%BA%CE%BC%F2%B5%A5%B5%C4%B4%EE%BD%A8%BB%B7%BE%B3.pptx%22&responseContentType=application%2Foctet-stream&responseCacheControl=no-cache&authorization=bce-auth-v1%2Ffa1126e91489401fa7cc85045ce7179e%2F2017-04-10T06%3A39%3A06Z%2F3600%2Fhost%2F24de87064b7f99a34e6e3e2ee7059d0b4225a2fb8f89ada0f300fb1b9b266567&token=4dcba41dff479e826c1ac3beeb9d282f62612d0f71ca1535dd404af062c6da79&expire=2017-04-10T07:39:06Z",
                      @"http://120.25.226.186:32812/resources/videos/minion_02.mp4",
                      @"http://120.25.226.186:32812/resources/images/minion_08.png"];*/
    
    
    self.urlArray =@[@"http://v4ttyey-10001453.video.myqcloud.com/Microblog/288-4-1452304375video1466172731.mp4",@"http://120.25.226.186:32812/resources/videos/minion_02.mp4"];
    
    downIndex = 0;
    
    NSString *urlSr = self.urlArray[0];
    //准备从远程下载文件
    [self downFileFromServer:urlSr];
    
    [self createButton];
    
}

-(void)createButton
{
    UIButton * oneButton = [[UIButton alloc]initWithFrame:CGRectMake(50, 50,360, 60)];
    [self.view addSubview:oneButton];
    oneButton.backgroundColor=[UIColor redColor];
    [oneButton addTarget:self action:@selector(beginToDownLoad) forControlEvents:UIControlEventTouchUpInside];
    oneButton.tag = 1;
    UIButton * oneButtone = [[UIButton alloc]initWithFrame:CGRectMake(50, 350, 60, 60)];
    [self.view addSubview:oneButtone];
    oneButtone.backgroundColor=[UIColor redColor];
    [oneButtone addTarget:self action:@selector(endToLoading) forControlEvents:UIControlEventTouchUpInside];
}

-(void)printName:(NSString *)name
{
    
    
    NSLog(@"你是你Y的咸菜");
    
    
    
}
-(void)beginToDownLoad
{
    
    
    [_downloadTask resume];//开始去下载
    
    
    
    
    // Do any additional setup after loading the view.
}
-(void)endToLoading
{
    
    
    
    [_downloadTask suspend];// 暂停下载的犯法路径
    
    
    
    
    
    
    
    
    
    
}
- (void)downFileFromServer:(NSString *)urlStr{
    __weak typeof(self) weakSelf = self;
    
    downIndex ++;
    if (urlStr.length <= 0) {
        //下载完成后 进行下一个任务
        if (downIndex < weakSelf.urlArray.count) {
            [weakSelf downFileFromServer:weakSelf.urlArray[downIndex]];
        }
        return ;
    }
    NSURL *URL = [NSURL URLWithString:urlStr];
    
    //默认配置
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    //AFN3.0+基于封住URLSession的句柄
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    //请求
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    //下载Task操作
    _downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        
        // @property int64_t totalUnitCount;     需要下载文件的总大小
        // @property int64_t completedUnitCount; 当前已经下载的大小
        //        downloadProgress.totalUnitCount;
        //        downloadProgress.completedUnitCount;
        
        // 给Progress添加监听 KVO
        
        // 回到主队列刷新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            // 设置进度条的百分比
            
            UIButton * onebutton = [self.view viewWithTag:1];
            
            [onebutton setTitle:[NSString stringWithFormat:@"%f",1.0 * downloadProgress.completedUnitCount / downloadProgress.totalUnitCount] forState:UIControlStateNormal];
            
//            self.progressV.progress = 1.0 * downloadProgress.completedUnitCount / downloadProgress.totalUnitCount;
        });
        
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        
        // 要求返回一个URL, 这个URL就是文件的位置的路径
        
        NSString *cachesPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
        NSString *path = [cachesPath stringByAppendingPathComponent:response.suggestedFilename];
        
        NSLog(@"文件路径：%@",path);
        self.path = path;
        return [NSURL fileURLWithPath:path];
        
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //设置下载完成操作
        // filePath就是下载文件的位置, [filePath path];// 将NSURL转成NSString
        
        //下载完成后 进行下一个任务
        if (downIndex < weakSelf.urlArray.count) {
            //weakSelf.progressV.progress = 0.0;
            //[weakSelf downFileFromServer:weakSelf.urlArray[downIndex]];
            //开始下载
            [_downloadTask resume];
        }
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
