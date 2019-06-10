//
//  FABAccountHeaderViewVM.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderViewVM.h"

@interface FABAccountHeaderViewVM ()
/** 收入预算 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *incomeBudgetBlockViewVM;
/** 支出预算 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *expenditureBudgetBlockViewVM;
/** 记录笔数 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *accountNumBlockViewVM;
/** 收入 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *incomeBlockViewVM;
/** 支出 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *expenditureBlockViewVM;
/** 总结余 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *cashSurplusBlockViewVM;

@end

@implementation FABAccountHeaderViewVM

- (FABAccountHeaderBlockViewVM *)incomeBudgetBlockViewVM {
    if (!_incomeBudgetBlockViewVM) {
        _incomeBudgetBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"收入预算" Value:@"22200.00" blockType:FABAccountHeaderBlockTypeDefault];
    }
    return _incomeBudgetBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)expenditureBudgetBlockViewVM {
    if (!_expenditureBudgetBlockViewVM) {
        _expenditureBudgetBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"支出预算" Value:@"5000.00" blockType:FABAccountHeaderBlockTypeDefault];
    }
    return _expenditureBudgetBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)accountNumBlockViewVM {
    if (!_accountNumBlockViewVM) {
        _accountNumBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"笔数" Value:@"22" blockType:FABAccountHeaderBlockTypeDefault];
    }
    return _accountNumBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)incomeBlockViewVM {
    if (!_incomeBlockViewVM) {
        _incomeBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总收入" Value:@"22200.00" blockType:FABAccountHeaderBlockTypeHightLight];
    }
    return _incomeBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)expenditureBlockViewVM {
    if (!_expenditureBlockViewVM) {
        _expenditureBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总支出" Value:@"2000.00" blockType:FABAccountHeaderBlockTypeHightLight];
    }
    return _expenditureBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)cashSurplusBlockViewVM {
    if (!_cashSurplusBlockViewVM) {
        _cashSurplusBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总结余" Value:@"20200.00" blockType:FABAccountHeaderBlockTypeHightLight];
    }
    return _cashSurplusBlockViewVM;
}

@end
