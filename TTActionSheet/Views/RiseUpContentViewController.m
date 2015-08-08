//
//  RiseUpContentViewController.m
//  TTActionSheet
//
//  Created by chengxun on 15/8/6.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import "RiseUpContentViewController.h"
#import "RiseUpViewCell.h"
@interface RiseUpContentViewController ()
@property (nonatomic,strong)NSArray * PaytypeItems;
@end

@implementation RiseUpContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.tableView.separatorColor = [UIColor blackColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //self.tableView.backgroundColor = [UIColor greenColor];
    self.tableView.rowHeight = 39;
    self.tableView.backgroundColor = [UIColor redColor];
}

- (NSArray*)PaytypeItems
{
    if(_PaytypeItems == nil)
    {
    _PaytypeItems = @[@"余额支付",@"特特币支付",@"支付宝支付",@"取消"];
    }
    return _PaytypeItems;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.PaytypeItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RiseUpViewCell * cell = [RiseUpViewCell riseUpViewCellWith:tableView];
    cell.contentText = self.PaytypeItems[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"我辈惦记啦!%zi",indexPath.row);
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self.delegate RiseUpContentViewController:self didSeclect:indexPath.row];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
