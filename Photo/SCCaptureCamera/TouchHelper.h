//
//  TouchHelper.h
//  Test
//
//  Created by Michael on 16/4/3.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface TouchHelper : NSObject

- (instancetype)initWithIndex:(NSInteger)index Frame:(CGRect)frame;

- (NSInteger)touchViewIndexWithPoint:(CGPoint)point;

@end
