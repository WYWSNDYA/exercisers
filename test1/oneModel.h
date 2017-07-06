//
//  oneModel.h
//  test1
//
//  Created by 闻飞 on 2017/7/7.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface oneModel : JSONModel

@property(nonatomic,assign) int id;

@property(strong,nonatomic)NSString<Optional>*name;

@property(assign,nonatomic)float price;

@property(nonatomic,strong)NSNumber<Optional> * uuid;

@end
