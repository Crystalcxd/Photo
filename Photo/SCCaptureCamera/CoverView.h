//
//  CoverView.h
//  Test
//
//  Created by Michael on 16/3/26.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoverView : UIView

@property (nonatomic , assign) NSInteger index;


- (instancetype)initWithFrame:(CGRect)frame Index:(NSInteger)index;

//- (NSInteger)touchViewIndexWithPoint:(CGPoint)point;

@end
