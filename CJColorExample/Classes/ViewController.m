//
//  ViewController.m
//  CJColorExample
//
//  Created by Chen_Jun on 2017/7/4.
//  Copyright © 2017年 zwu. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CJ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *view0 = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 250, 50)];
    view0.backgroundColor = HEXColor(@"#FFF0F5");
    view0.text = @"HEXColor(@\"#FFF0F5\");";
    [self.view addSubview:view0];
    
    UILabel *view1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 90, 250, 50)];
    view1.backgroundColor = [UIColor goldColor];
    view1.text = @"[UIColor goldColor];";
    [self.view addSubview:view1];
    
    UILabel *view2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 250, 50)];
    view2.backgroundColor = [UIColor dodgerBlueColor];
    view2.text = @"[UIColor dodgerBlueColor];";
    [self.view addSubview:view2];
    
    UILabel *view3 = [[UILabel alloc] initWithFrame:CGRectMake(30, 210, 250, 50)];
    view3.backgroundColor = RGBColor(123, 234, 10);
    view3.text = @"RGBColor(123, 234, 10);";
    [self.view addSubview:view3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
