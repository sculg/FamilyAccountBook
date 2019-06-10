//
//  FABAccountHeaderBlockViewVM.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderBlockViewVM.h"

@implementation FABAccountHeaderBlockViewVM

- (instancetype)initWithTitle:(NSString *)title Value:(NSString *)value blockType:(FABAccountHeaderBlockType)blockType {
    self = [super init];
    if (self) {
        _titleStr = title;
        _valueStr = value;
        _blockType = blockType;
    }
    return self;
}

@end
