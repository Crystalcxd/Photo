//
//  PointModel.h
//  demo
//
//  Created by medica_mac on 16/4/1.
//  Copyright © 2016年 com.medica. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface PointModel : NSObject

@property (nonatomic , assign) CGFloat xPosition;

@property (nonatomic , assign) CGFloat yPosition;

- (instancetype)initWithXPosition:(CGFloat)x YPosition:(CGFloat)y;

@end
