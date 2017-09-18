//
//  FooterView.m
//  ScrollView滚动
//
//  Created by WangXueqi on 17/9/4.
//  Copyright © 2017年 JingBei. All rights reserved.
//

#import "FooterView.h"

@implementation FooterView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        if (!_bottomView) {
            _bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
            _bottomView.backgroundColor = [UIColor grayColor];
            [self addSubview:_bottomView];
        }
        if (!_backImage) {
            _backImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
            _backImage.image = [UIImage imageNamed:@"new_bg"];
            [_bottomView addSubview:_backImage];
        }
    }
    return self;
}

@end
