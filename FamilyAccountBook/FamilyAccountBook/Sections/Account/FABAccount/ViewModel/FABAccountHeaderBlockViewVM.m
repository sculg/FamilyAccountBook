//
//  FABAccountHeaderBlockViewVM.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderBlockViewVM.h"

@implementation FABAccountHeaderBlockViewVM

- (instancetype)initWithTitle:(NSString *)title Value:(NSString *)value {
    self = [super init];
    if (self) {
        _titleStr = title;
        _valueStr = value;
    }
    return self;
}

@end
