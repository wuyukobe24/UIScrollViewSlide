//
//  ViewController.m
//  ScrollView滚动
//
//  Created by WangXueqi on 17/9/4.
//  Copyright © 2017年 JingBei. All rights reserved.
//

#import "ViewController.h"
#import "HeaderView.h"
#import "FooterView.h"

#define K_ScreenWidth   CGRectGetWidth([[UIScreen mainScreen] bounds])// 当前屏幕宽
#define K_ScreenHeight  CGRectGetHeight([[UIScreen mainScreen] bounds])// 当前屏幕高
@interface ViewController ()<UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView * baseScrollView;
@property(nonatomic,strong)HeaderView * headerView;
@property(nonatomic,strong)FooterView * footerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"滑动";
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.baseScrollView];
    [self.baseScrollView addSubview:self.headerView];
    [self.baseScrollView addSubview:self.footerView];
}

- (UIScrollView *)baseScrollView {

    if (!_baseScrollView ) {
        _baseScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, K_ScreenWidth, K_ScreenHeight)];
        _baseScrollView.delegate = self;
        _baseScrollView.backgroundColor = [UIColor grayColor];
        _baseScrollView.contentSize = CGSizeMake(0, K_ScreenHeight+K_ScreenWidth);
    }
    return _baseScrollView;
}

- (HeaderView *)headerView {

    if (!_headerView) {
        _headerView = [[HeaderView alloc]initWithFrame:CGRectMake(0, -K_ScreenWidth/4, K_ScreenWidth, K_ScreenHeight)];
    }
    return _headerView;
}

- (FooterView *)footerView {

    if (!_footerView) {
        _footerView = [[FooterView alloc]initWithFrame:CGRectMake(0, K_ScreenWidth, K_ScreenWidth, K_ScreenHeight)];
    }
    return _footerView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    CGFloat contentOffset = scrollView.contentOffset.y;
    NSLog(@"contentOffset == %f",contentOffset);
    
    self.headerView.frame = CGRectMake(0, -K_ScreenWidth/4+(contentOffset+64)/3, K_ScreenWidth, K_ScreenHeight);
    self.footerView.frame = CGRectMake(0, K_ScreenWidth-(contentOffset+64)/2, K_ScreenWidth, K_ScreenHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
