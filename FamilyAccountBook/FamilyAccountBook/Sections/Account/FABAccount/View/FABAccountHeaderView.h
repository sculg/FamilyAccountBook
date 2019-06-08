//
//  FABAccountHeaderView.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FABAccountHeaderViewVM.h"

NS_ASSUME_NONNULL_BEGIN

@interface FABAccountHeaderView : UIView

/** 指定初始化构造方法 */
- (instancetype)initWithFrame:(CGRect)frame  viewModel:(FABAccountHeaderViewVM  *)viewModel;

@end

NS_ASSUME_NONNULL_END
