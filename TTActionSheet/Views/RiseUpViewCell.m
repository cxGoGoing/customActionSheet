//
//  RiseUpViewCell.m
//  TTActionSheet
//
//  Created by chengxun on 15/8/8.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import "RiseUpViewCell.h"
#import "UIView+Extension.h"
#import "PureLayout.h"
@interface RiseUpViewCell()
@property (nonatomic,weak)  UILabel* contentLabel;
@property (nonatomic,weak)UIImageView * separatorView;
@end
@implementation RiseUpViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)riseUpViewCellWith:(UITableView *)tableView
{
    [tableView registerClass:[self class] forCellReuseIdentifier:NSStringFromClass([self class])];
    RiseUpViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.backgroundColor = [UIColor clearColor];
        self.contentView.alpha = 0.8;
        //self.alpha = 0.8;
        //self.contentView.backgroundColor = [UIColor whiteColor];
        UIImageView * separatorView = [[UIImageView alloc]init];
        separatorView.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:separatorView];
        self.separatorView = separatorView;
        
        UILabel* contentLabel = [[UILabel alloc]init];
        contentLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:contentLabel];
        self.contentLabel = contentLabel;
        
    }
    return self;
}

- (void)setContentText:(NSString *)contentText
{
    _contentText = contentText;
    self.contentLabel.text = contentText;
}
- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [self.separatorView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(0, 0, 0, 0) excludingEdge:ALEdgeTop];
    [self.separatorView autoSetDimension:ALDimensionHeight toSize:1];
    [self.contentLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView withOffset:16];
    [self.contentLabel autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:self.contentView withOffset:-16];
    [self.contentLabel autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.contentLabel autoSetDimension:ALDimensionHeight toSize:20];
    
}

@end
