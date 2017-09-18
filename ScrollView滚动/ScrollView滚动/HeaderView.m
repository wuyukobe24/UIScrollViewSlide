//
//  HeaderView.m
//  ScrollView滚动
//
//  Created by WangXueqi on 17/9/4.
//  Copyright © 2017年 JingBei. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        if (!_backImage) {
            _backImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame))];
            _backImage.image = [UIImage imageNamed:@"signin_bg"];
            [self addSubview:_backImage];
        }
    }
    return self;
}

@end
