//
//  RiseUpViewCell.h
//  TTActionSheet
//
//  Created by chengxun on 15/8/8.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RiseUpViewCell : UITableViewCell
@property (nonatomic,copy)NSString * contentText;
+ (instancetype)riseUpViewCellWith:(UITableView*)tableView;
@end
