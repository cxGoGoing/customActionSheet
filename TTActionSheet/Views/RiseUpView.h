//
//  RiseUpView.h
//  TTActionSheet
//
//  Created by chengxun on 15/8/6.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RiseUpView;

@interface RiseUpView : UIView

@property (nonatomic,strong)NSArray * selectItems;
+ (instancetype)riseUpView;
- (void)showViewFrom:(UIView*)from;/**<  从哪儿开始显示  */
- (void)dismiss;/**<  销毁自身  */

@property (nonatomic,strong)UIViewController * contentController;
@property (nonatomic,strong)UIView * content;


@end
