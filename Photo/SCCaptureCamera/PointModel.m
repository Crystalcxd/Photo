//
//  PointModel.m
//  demo
//
//  Created by medica_mac on 16/4/1.
//  Copyright © 2016年 com.medica. All rights reserved.
//

#import "PointModel.h"

@implementation PointModel

- (instancetype)initWithXPosition:(CGFloat)x YPosition:(CGFloat)y
{
    self = [super init];
    if (self) {
        self.xPosition = x;
        self.yPosition = y;
    }
    
    return self;
}

@end
