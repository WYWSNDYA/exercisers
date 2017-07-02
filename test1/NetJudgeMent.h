//
//  NetJudgeMent.h
//  test1
//
//  Created by 闻飞 on 2017/7/2.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
typedef enum {
    
    typeA  =  0 ,
    typeB  =  1 ,
    typeC  =  2 ,
    typeD  =  3 ,
    

}netStatus;

@interface NetJudgeMent : NSObject
@property(nonatomic,strong)UILabel * nameLable;
@property(nonatomic,assign)netStatus netStatus;
+(void)judgeMentFromNet;
@end
