//
//  TouchHelper.m
//  Test
//
//  Created by Michael on 16/4/3.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "TouchHelper.h"

#import "PointModel.h"

@interface TouchHelper ()

@property (nonatomic , strong) NSMutableArray *showAreaArray;

@property (nonatomic , assign) CGRect frame;

@property (nonatomic , assign) NSInteger index;


@end

@implementation TouchHelper

- (instancetype)initWithIndex:(NSInteger)index Frame:(CGRect)frame
{
    self = [super init];
    if (self) {
        self.index = index;
        
        self.frame = frame;
        
        [self installShowAreaArray];
    }
    
    return self;
}

- (void)installShowAreaArray
{
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = CGRectGetHeight(self.frame);
    
    if (self.index == 0) {
        
        PointModel *point = [[PointModel alloc] initWithXPosition:12 YPosition:17];
        PointModel *point2 = [[PointModel alloc] initWithXPosition:width - 12 YPosition:17];
        PointModel *point3 = [[PointModel alloc] initWithXPosition:width - 12 YPosition:height * 0.5 - 9];
        PointModel *point4 = [[PointModel alloc] initWithXPosition:12 YPosition:height * 0.5 - 9];
        
        NSMutableArray *firstAreaArray = [[NSMutableArray alloc] initWithObjects:point,point2,point3,point4, nil];
        
        PointModel *point5 = [[PointModel alloc] initWithXPosition:12 YPosition:height * 0.5 + 9];
        PointModel *point6 = [[PointModel alloc] initWithXPosition:width - 12 YPosition:height * 0.5 + 9];
        PointModel *point7 = [[PointModel alloc] initWithXPosition:width - 12 YPosition:height - 17];
        PointModel *point8 = [[PointModel alloc] initWithXPosition:12 YPosition:height - 17];
        
        NSMutableArray *secondAreaArray = [[NSMutableArray alloc] initWithObjects:point5,point6,point7,point8, nil];
        
        self.showAreaArray = [[NSMutableArray alloc] initWithObjects:firstAreaArray,secondAreaArray, nil];
    }else{
        self.showAreaArray = [[NSMutableArray alloc] init];
    }
}

- (NSInteger)touchViewIndexWithPoint:(CGPoint)point
{
    NSInteger index = 0;
    
    NSInteger count = self.showAreaArray.count;
    
    for (int i = 0; i < count; i++) {
        NSMutableArray *array = [self.showAreaArray objectAtIndex:i];
        
        if ([self containsPoint:point withBezier:array]) {
            index = i;
            break;
        }
    }
    
    return index;
}

- (BOOL)containsPoint:(CGPoint)point withBezier:(NSMutableArray *)array
{
    BOOL ifContains = NO;
    
    if (array.count == 0) {
        return ifContains;
    }
    
    NSInteger count = array.count;
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    
    CGMutablePathRef pathRef=CGPathCreateMutable();
    
    for (int i = 0; i < count; i++) {
        PointModel *point = [array objectAtIndex:i];
        
        if (i == 0) {
            [bezierPath moveToPoint: CGPointMake(point.xPosition, point.yPosition)];
            CGPathMoveToPoint(pathRef, NULL, point.xPosition, point.yPosition);
        }else{
            [bezierPath addLineToPoint: CGPointMake(point.xPosition, point.yPosition)];
            CGPathAddLineToPoint(pathRef, NULL, point.xPosition, point.yPosition);
        }
    }
    
    PointModel *firstPoint = [array objectAtIndex:0];
    
    CGPathAddLineToPoint(pathRef, NULL, firstPoint.xPosition, firstPoint.yPosition);
    CGPathCloseSubpath(pathRef);
    
    if (CGPathContainsPoint(pathRef, NULL, point, NO))
    {
        ifContains = YES;
    }
    
    return ifContains;
}

@end
