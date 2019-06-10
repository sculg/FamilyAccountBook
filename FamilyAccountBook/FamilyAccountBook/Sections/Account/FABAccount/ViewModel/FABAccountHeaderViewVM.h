//
//  FABAccountHeaderViewVM.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FABAccountHeaderBlockViewVM.h"

NS_ASSUME_NONNULL_BEGIN

@interface FABAccountHeaderViewVM : NSObject

/** 收入预算 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *incomeBudgetBlockViewVM;
/** 支出预算 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *expenditureBudgetBlockViewVM;
/** 记录笔数 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *accountNumBlockViewVM;
/** 收入 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *incomeBlockViewVM;
/** 支出 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *expenditureBlockViewVM;
/** 总结余 */
@property (nonatomic, strong, readonly) FABAccountHeaderBlockViewVM *cashSurplusBlockViewVM;

@end

NS_ASSUME_NONNULL_END
