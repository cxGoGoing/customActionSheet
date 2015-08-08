//
//  ViewController.m
//  TTActionSheet
//
//  Created by chengxun on 15/8/6.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import "ViewController.h"
#import "PureLayout.h"
#import "RiseUpView.h"
#import "RiseUpContentViewController.h"
#import "UIView+Extension.h"
@interface ViewController ()<RiseUpContentViewControllerDelegate>
@property (nonatomic,weak)RiseUpView * riseUpView;
@end

@implementation ViewController
- (void)RiseUpContentViewController:(RiseUpContentViewController *)RiseUpContentViewController didSeclect:(NSInteger)index
{
    NSLog(@"%zi",index);
    [self.riseUpView dismiss];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [self.view addSubview:button];
    [button autoAlignAxisToSuperviewAxis:ALAxisVertical];
    [button autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [button addTarget:self action:@selector(riseUp:) forControlEvents:UIControlEventTouchDown];

    
  
    // Do any additional setup after loading the view.
}

- (void)riseUp:(UIButton*)btn
{
    RiseUpView * riseUpView = [RiseUpView riseUpView];
    self.riseUpView = riseUpView;
    RiseUpContentViewController * riseUpContentVc = [[RiseUpContentViewController alloc]init];
    riseUpContentVc.delegate = self;
    riseUpContentVc.view.height = 39*4+20;
    riseUpContentVc.view.width = [UIScreen mainScreen].bounds.size.width;
    riseUpView.contentController = riseUpContentVc;
    [riseUpView showViewFrom:btn];
    
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
