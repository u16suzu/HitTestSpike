//
//  ViewController.m
//  spike
//
//  Created by u16suzu on 2014/12/30.
//  Copyright (c) 2014年 u16suzu. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
#import "MyView.h"

@interface ViewController ()
@property (nonatomic) MyButton *btn;
@property (nonatomic) MyView *v;
@end

@implementation ViewController

- (void)loadView{
    [super loadView];
    [self.view addSubview:self.btn];
    [self.view addSubview:self.v];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSLog(@"");
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    self.btn.frame = CGRectMake(50, 50, 50, 50);
    self.btn.tappableInsets = UIEdgeInsetsMake(-20, -20, -20, -20);
    
}

#pragma mark - Views

- (MyButton*)btn{
    if(!_btn){
        _btn = [MyButton buttonWithType:UIButtonTypeSystem];
        [_btn setTitle:@"btn" forState:UIControlStateNormal];
    }
    return _btn;
}

- (MyView*)v{
    if(_v){
        _v = [[MyView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    }
    return _v;
}

#pragma mark -

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
