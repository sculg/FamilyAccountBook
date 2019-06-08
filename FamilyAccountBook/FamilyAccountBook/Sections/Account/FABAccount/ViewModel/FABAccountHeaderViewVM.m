//
//  FABAccountHeaderViewVM.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderViewVM.h"

@interface FABAccountHeaderViewVM ()

/** 收入 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *incomeBlockViewVM;
/** 支出 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *expenditureBlockViewVM;
/** 总结余 */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *cashSurplusBlockViewVM;

@end

@implementation FABAccountHeaderViewVM

- (FABAccountHeaderBlockViewVM *)incomeBlockViewVM {
    if (!_incomeBlockViewVM) {
        _incomeBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总收入" Value:@"22200.00"];
    }
    return _incomeBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)expenditureBlockViewVM {
    if (!_expenditureBlockViewVM) {
        _expenditureBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总支出" Value:@"2000.00"];
    }
    return _expenditureBlockViewVM;
}

- (FABAccountHeaderBlockViewVM *)cashSurplusBlockViewVM {
    if (!_cashSurplusBlockViewVM) {
        _cashSurplusBlockViewVM = [[FABAccountHeaderBlockViewVM alloc] initWithTitle:@"总结余" Value:@"20200.00"];
    }
    return _cashSurplusBlockViewVM;
}

@end
