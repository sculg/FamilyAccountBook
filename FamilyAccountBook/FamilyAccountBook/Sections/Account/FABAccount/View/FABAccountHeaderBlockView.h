//
//  FABAccountHeaderBlockView.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FABAccountHeaderBlockViewVM.h"

NS_ASSUME_NONNULL_BEGIN

@interface FABAccountHeaderBlockView : UIView

/** 指定初始化构造方法 */
- (instancetype)initWithFrame:(CGRect)frame  viewModel:(FABAccountHeaderBlockViewVM  *)viewModel;

@end

NS_ASSUME_NONNULL_END
