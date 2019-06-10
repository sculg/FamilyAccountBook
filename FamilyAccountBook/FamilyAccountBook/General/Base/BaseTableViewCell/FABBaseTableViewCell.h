//
//  FABBaseTableViewCell.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/10.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FABBaseTableViewCell : UITableViewCell

/**
 * 用于Cell创建
 *
 * 用法：
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 Cell *cell = [Cell cellForTableView:tableView];
 return cell;
 }
 */
+ (id)cellForTableView:(UITableView *)tableView;

/**
 *  提取当前TableViewCell的标示符
 *
 *  @return 回调Cell的String字符串
 */
+ (NSString *)cellIdentifier;

/**
 * 重写cell需要覆盖此方法
 *
 * 用法：
 @implementation Cell
 
 - (instancetype)initWithCellIdentifier:(NSString *)cellId
 {
 if (self = [super initWithCellIdentifier:cellId]) {
 }
 return self;
 }
 
 @end
 */
- (instancetype)initWithCellIdentifier:(NSString *)cellId;

@end

NS_ASSUME_NONNULL_END
