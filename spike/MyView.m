//
//  MyView.m
//  spike
//
//  Created by u16suzu on 2014/12/30.
//  Copyright (c) 2014年 u16suzu. All rights reserved.
//

#import "MyView.h"

@interface MyView()
@property (nonatomic) UIButton *btn;
@end

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:self.btn];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.btn.frame = CGRectMake(100, 50, 50, 50);
}

#pragma mark - Views

- (UIButton*)btn{
    if(!_btn){
        _btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_btn setTitle:@"btn" forState:UIControlStateNormal];
    }
    return _btn;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
