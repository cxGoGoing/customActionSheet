//
//  RiseUpView.m
//  TTActionSheet
//
//  Created by chengxun on 15/8/6.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import "RiseUpView.h"
#import "PureLayout.h"
#import "UIView+Extension.h"
#import "RiseUpContentViewController.h"
@interface RiseUpView()
/**  容器视图  */
@property (nonatomic,weak)UIImageView * containerView;

@end
@implementation RiseUpView

+ (instancetype)riseUpView
{
    return [[self alloc]init];
}


- (UIImageView*)containerView
{
    if(_containerView == nil)
    {
        UIImageView * containerView = [[UIImageView alloc]init];
        containerView.image = [UIImage imageNamed:@"color_FFFFFF"];
        containerView.userInteractionEnabled = YES;
        [self addSubview:containerView];
        
        self.containerView = containerView;
    }
    return _containerView;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)showViewFrom:(UIView *)from
{
    UIWindow * window = [[UIApplication sharedApplication].windows lastObject];
    [window addSubview:self];
    self.frame = window.frame;
    self.containerView.x = 0;
    self.containerView.y = [UIScreen mainScreen].bounds.size.height;
    [UIView animateWithDuration:0.3 animations:^{
        self.containerView.x = 0;
        self.containerView.y = [UIScreen mainScreen].bounds.size.height - self.content.height;
    }];
 
}

- (void)dismiss
{
    [UIView animateWithDuration:0.3 animations:^{
        self.x = 0;
        self.y = [UIScreen mainScreen].bounds.size.height;
    }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self removeFromSuperview];
    });

}

- (void)setContent:(UIView *)content
{
    _content = content;
    self.containerView.height = content.height;
    self.containerView.width = content.width;
    [self.containerView addSubview:content];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self dismiss];
}

- (void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    self.content = contentController.view;
}






@end
