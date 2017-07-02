//
//  DataStoreSource.h
//  test1
//
//  Created by 闻飞 on 2017/7/2.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
@interface DataStoreSource : NSObject
{
    FMDatabase * db;
    
}
+(void)creatTable;
+(void)insertData:(NSString *)name age:(int)age;
+(void)deleFromTheForm:(NSString *)name;
+(void)checkFromTheForm;
+(void)Modify;
@end
