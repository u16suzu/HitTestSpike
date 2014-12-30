//
//  MyButton.m
//  spike
//
//  Created by u16suzu on 2014/12/30.
//  Copyright (c) 2014年 u16suzu. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect rect = self.bounds;
    
    // 自身の bounds を Insets 分大きさを変える
    rect.origin.x += self.tappableInsets.left;
    rect.origin.y += self.tappableInsets.top;
    rect.size.width -= (self.tappableInsets.left + self.tappableInsets.right);
    rect.size.height -= (self.tappableInsets.top + self.tappableInsets.bottom);

    // 変更した rect に point が含まれるかどうかを返す
    return CGRectContainsPoint(rect, point);
}

@end
