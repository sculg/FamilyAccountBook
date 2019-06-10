//
//  RYButtonCell.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/10.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FABBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^CellButtonPressedBlock)(void);

@interface RYButtonCell : FABBaseTableViewCell

/** 点击block的回调 */
@property (nonatomic, copy) CellButtonPressedBlock btnPressedBlock;
/** 设置button */
-(void)configButtonWithTitle:(NSString *)title
                  titleColor:(UIColor *)titleColor
                     bgColor:(UIColor *)bgColor
                   topOffset:(CGFloat)topOffset;

@end

NS_ASSUME_NONNULL_END
