//
//  CoverView.m
//  Test
//
//  Created by Michael on 16/3/26.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "CoverView.h"

#import "PointModel.h"

@implementation CoverView

- (id)initWithFrame:(CGRect)frame Index:(NSInteger)index {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
        
        self.index = index;
    }
    self.backgroundColor=[UIColor clearColor];
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);

    CGFloat screenScale = [[UIScreen mainScreen] bounds].size.width / 375.0;
    
    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];

    [self drawBorderWithHeight:height Width:width Color:color2];
    
    if (self.index == 1) {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(12, height * 0.5 - 9)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, height * 0.5 - 9)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, height * 0.5 + 9)];
        [bezierPath addLineToPoint: CGPointMake(12, height * 0.5 + 9)];
        [bezierPath addLineToPoint: CGPointMake(12, height * 0.5 - 9)];
        [color2 setFill];
        [bezierPath fill];
    }else if (self.index == 2){
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(425 * 0.5 * screenScale, 17)];
        [bezierPath addLineToPoint: CGPointMake(450 * 0.5 * screenScale, 17)];
        [bezierPath addLineToPoint: CGPointMake(450 * 0.5 * screenScale, height - 17)];
        [bezierPath addLineToPoint: CGPointMake(425 * 0.5 * screenScale, height - 17)];
        [bezierPath addLineToPoint: CGPointMake(425 * 0.5 * screenScale, 17)];
        [color2 setFill];
        [bezierPath fill];
    }else if (self.index == 3){
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(12, height * 0.5 - 9)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, height * 0.5 - 9)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, height * 0.5 + 9)];
        [bezierPath addLineToPoint: CGPointMake(12, height * 0.5 + 9)];
        [bezierPath addLineToPoint: CGPointMake(12, height * 0.5 - 9)];
        [color2 setFill];
        [bezierPath fill];

        //// Bezier Drawing
        UIBezierPath* bezierPathTwo = [UIBezierPath bezierPath];
        [bezierPathTwo moveToPoint: CGPointMake(width * 0.5 - 6, 17)];
        [bezierPathTwo addLineToPoint: CGPointMake(width * 0.5 + 6, 17)];
        [bezierPathTwo addLineToPoint: CGPointMake(width * 0.5 + 6, height - 17)];
        [bezierPathTwo addLineToPoint: CGPointMake(width * 0.5 - 6, height - 17)];
        [bezierPathTwo addLineToPoint: CGPointMake(width * 0.5 - 6, 17)];
        [color2 setFill];
        [bezierPathTwo fill];
    }else if (self.index == 4){
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(12, 641 * 0.5 *screenScale)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, 606 * 0.5 *screenScale)];
        [bezierPath addLineToPoint: CGPointMake(width - 12, 638 * 0.5 * screenScale)];
        [bezierPath addLineToPoint: CGPointMake(12, 673 * 0.5 * screenScale)];
        [bezierPath addLineToPoint: CGPointMake(12, 641 * 0.5 *screenScale)];
        [color2 setFill];
        [bezierPath fill];
    }else if (self.index == 5){
        
    }
}

- (void)drawBorderWithHeight:(CGFloat)height Width:(CGFloat)width Color:(UIColor *)color2
{
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(0, 0)];
    [bezierPath addLineToPoint: CGPointMake(width, 0)];
    [bezierPath addLineToPoint: CGPointMake(width, 17)];
    [bezierPath addLineToPoint: CGPointMake(0, 17)];
    [bezierPath addLineToPoint: CGPointMake(0, 0)];
    [color2 setFill];
    [bezierPath fill];
    
    //// Bezier Drawing
    UIBezierPath* bezierPathTwo = [UIBezierPath bezierPath];
    [bezierPathTwo moveToPoint: CGPointMake(0, 17)];
    [bezierPathTwo addLineToPoint: CGPointMake(12, 17)];
    [bezierPathTwo addLineToPoint: CGPointMake(12, height - 17)];
    [bezierPathTwo addLineToPoint: CGPointMake(0, height - 17)];
    [bezierPathTwo addLineToPoint: CGPointMake(0, 17)];
    [color2 setFill];
    [bezierPathTwo fill];
    
    //// Bezier Drawing
    UIBezierPath* bezierPathThree = [UIBezierPath bezierPath];
    [bezierPathThree moveToPoint: CGPointMake(width - 12, 17)];
    [bezierPathThree addLineToPoint: CGPointMake(width, 17)];
    [bezierPathThree addLineToPoint: CGPointMake(width, height - 17)];
    [bezierPathThree addLineToPoint: CGPointMake(width - 12, height - 17)];
    [bezierPathThree addLineToPoint: CGPointMake(width - 12, 35)];
    [color2 setFill];
    [bezierPathThree fill];
    
    //// Bezier Drawing
    UIBezierPath* bezierPathFour = [UIBezierPath bezierPath];
    [bezierPathFour moveToPoint: CGPointMake(0, height - 17)];
    [bezierPathFour addLineToPoint: CGPointMake(width, height - 17)];
    [bezierPathFour addLineToPoint: CGPointMake(width, height)];
    [bezierPathFour addLineToPoint: CGPointMake(0, height)];
    [bezierPathFour addLineToPoint: CGPointMake(0, height - 17)];
    [color2 setFill];
    [bezierPathFour fill];
}

@end
