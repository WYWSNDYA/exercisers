//
//  DianYuFa.h
//  test1
//
//  Created by 闻飞 on 2017/7/8.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DianYuFa : NSObject
{
    
    NSString * name;
    
    
    int age;
    
    
}

@property(nonatomic,copy)NSString * pickShow;

-(void)setName:(NSString *)dname;
-(NSString *)name;

-(void)setNewAge:(int)newAge;

-(int)age;

@end
