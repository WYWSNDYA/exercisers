//
//  DataStoreSource.m
//  test1
//
//  Created by 闻飞 on 2017/7/2.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "DataStoreSource.h"
@implementation DataStoreSource
+(void)creatTable{
    
    NSString *doc =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES)  lastObject];
    
    NSString *fileName = [doc stringByAppendingPathComponent:@"student.sqlite"];
    
    //2.获得数据库
    FMDatabase *db = [FMDatabase databaseWithPath:fileName];
    
    //3.使用如下语句，如果打开失败，可能是权限不足或者资源不足。通常打开完操作操作后，需要调用 close 方法来关闭数据库。在和数据库交互 之前，数据库必须是打开的。如果资源或权限不足无法打开或创建数据库，都会导致打开失败。
    if ([db open])
    {
        //4.创表
        BOOL result = [db executeUpdate:@"CREATE TABLE IF NOT EXISTS t_student (id integer PRIMARY KEY AUTOINCREMENT, name text, age integer);"];
        
        if (result)
        {
            NSLog(@"创建表成功");
        }else{
            
            NSLog(@"这个列表没有创建成功");
            
        }
    }
    
    
}
+(void)insertData:(NSString *)name age:(int)age
{
    //插入数据使用OC中的类型 text对应为NSString integer对应为int的整型
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    //dbPath： 数据库路径，在Document中。
    NSString *dbPath = [documentDirectory stringByAppendingPathComponent:@"student.sqlite"];
    //创建数据库实例 db  这里说明下:如果路径中不存在"Test.db"的文件,sqlite会自动创建"Test.db"
    FMDatabase *db  = [FMDatabase databaseWithPath:dbPath] ;
    
    
    if ([db open]) {
        NSLog(@"1111111");
    }else{
        
        NSLog(@"2222222");
    }
    BOOL d = [db executeUpdate:@"INSERT INTO t_student (name, age) VALUES (?,?);",name,@(age)];
    
    if (d) {
        
        NSLog(@"插入成功");
    }else
    {
        
        NSLog(@"插入这个数据失败");
        
    }

}
+(void)deleFromTheForm:(NSString *)name
{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    //dbPath： 数据库路径，在Document中。
    NSString *dbPath = [documentDirectory stringByAppendingPathComponent:@"student.sqlite"];
    //创建数据库实例 db  这里说明下:如果路径中不存在"Test.db"的文件,sqlite会自动创建"Test.db"
    FMDatabase *db  = [FMDatabase databaseWithPath:dbPath] ;
    
    
    if ([db open]) {
        
        NSLog(@">>>>>>>>>>>");
    }
    
    
  BOOL t = [db executeUpdate:@"delete from t_student where name = ?;",name];
    
    if (t) {
        
        NSLog(@"删除成功");
    }else{
        
        NSLog(@"删除这个失败");
        
    }
    
    
}

+(void)checkFromTheForm
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    //dbPath： 数据库路径，在Document中。
    NSString *dbPath = [documentDirectory stringByAppendingPathComponent:@"student.sqlite"];
    //创建数据库实例 db  这里说明下:如果路径中不存在"Test.db"的文件,sqlite会自动创建"Test.db"
    FMDatabase *db  = [FMDatabase databaseWithPath:dbPath] ;
    
    
    [db open];
    
    FMResultSet *resultSet = [db executeQuery:@"select * from t_student where id<?;",@(4)];
    
    //遍历结果集合
    
    while ([resultSet  next])
        
    {
        int idNum = [resultSet intForColumn:@"id"];
        
        NSString *name = [resultSet
                          objectForColumn:@"name"];
        
        int age = [resultSet intForColumn:@"age"];
        
        
        NSLog(@"<<<<<<<<%@",name);
        
        
    }

}
//修改表内容
+(void)Modify
{
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    //dbPath： 数据库路径，在Document中。
    NSString *dbPath = [documentDirectory stringByAppendingPathComponent:@"student.db"];
    //创建数据库实例 db  这里说明下:如果路径中不存在"Test.db"的文件,sqlite会自动创建"Test.db"
    FMDatabase *db  = [FMDatabase databaseWithPath:dbPath] ;
    
    [db executeUpdate:@"UPDATE User SET Name = ? WHERE Name = ? ",@"李四",@"张三"];
}
@end
