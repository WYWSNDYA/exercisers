//
//  DianYuFa.m
//  test1
//
//  Created by 闻飞 on 2017/7/8.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "DianYuFa.h"

@implementation DianYuFa

@synthesize pickShow = _pickShow;


-(void)setPickShow:(NSString*)pickShow
{
    
       _pickShow = @"重写写一个set方法玩而已";// 真的是为了去实现想要的效果 一个字母都不能出错啊 
    

    
    
}
-(NSString *)pickShow{
    
    
    
    return _pickShow;
    
    
    
}
-(void)setName:(NSString *)dname
{
    
    name = dname;
    
}

-(NSString *)name
{
    

    return name;
    

}
-(void)setNewAge:(int)newAge
{
    
    age =  newAge;
    
    
    
    
}

-(int)age{
    
    
    return age;
    
}





@end
