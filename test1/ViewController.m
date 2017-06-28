//
//  ViewController.m
//  test1
//
//  Created by 闻飞 on 2017/6/20.
//  Copyright © 2017年 22232131. All rights reserved.
//

#import "ViewController.h"
typedef enum //定义一个常见的枚举类型
{
    
    playa = 1,
    playb = 2,
    playc = 3,
    
    
}assert;//枚举名字可直接在项目中应用这个枚举的类型值并将其应用到想要的类型中去完成这个类型的应用值类型


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int c = playa+playb;
    NSLog(@"%d",c);
    UIButton * oneButton =[[UIButton alloc]init];
    
    oneButton.backgroundColor = [UIColor redColor];
    
    oneButton.frame = CGRectMake(20,20, 40, 40);
    
    
    [self.view addSubview:oneButton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
    
    NSLog(@"wwwwwwwwwwww");
    
    
}

@end
