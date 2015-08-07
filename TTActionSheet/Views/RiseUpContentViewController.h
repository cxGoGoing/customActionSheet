//
//  RiseUpContentViewController.h
//  TTActionSheet
//
//  Created by chengxun on 15/8/6.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RiseUpContentViewController;
@protocol RiseUpContentViewControllerDelegate<NSObject>
- (void)RiseUpContentViewController:(RiseUpContentViewController*)RiseUpContentViewController didSeclect:(NSInteger)index;
@end
@interface RiseUpContentViewController : UITableViewController
@property (nonatomic,assign)id<RiseUpContentViewControllerDelegate> delegate;
@end
