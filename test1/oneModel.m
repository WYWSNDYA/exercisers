//
//  oneModel.m
//  test1
//
//  Created by 闻飞 on 2017/7/7.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "oneModel.h"

@implementation oneModel

+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"order_id": @"id",
                                                       @"order_details.name": @"productName",
                                                       @"order_details.price.usd": @"price"
                                                       }];
}

@end
