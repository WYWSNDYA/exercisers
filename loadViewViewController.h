//
//  loadViewViewController.h
//  test1
//
//  Created by 闻飞 on 2017/7/3.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"
@interface loadViewViewController : UIViewController
{
    NSURLSessionDownloadTask *_downloadTask;
    int downIndex;

}
@property (nonatomic, retain) NSArray  *urlArray;

@property (nonatomic, copy) NSString  *path;


@end
