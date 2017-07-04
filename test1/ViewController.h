//
//  ViewController.h
//  test1
//
//  Created by 闻飞 on 2017/6/20.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "Masonry.h"
#import "AFNetworking.h"
#import "TwoViewController.h"
#import "RealReachability.h"
#import "SKFFPSLabel.h"

@interface ViewController : UIViewController<WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler>
@property(nonatomic,strong)UIButton * againButton;
@property(nonatomic,strong)UILabel * showLable;
@property(nonatomic,strong)UIView * showView;
@property (nonatomic, strong) SKFFPSLabel *SkfFPSLabel;
@end

