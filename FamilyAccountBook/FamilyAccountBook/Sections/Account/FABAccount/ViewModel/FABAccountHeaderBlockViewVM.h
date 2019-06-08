//
//  FABAccountHeaderBlockViewVM.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FABAccountHeaderBlockViewVM : NSObject

@property (nonatomic, copy, readonly) NSString *titleStr;

@property (nonatomic, copy, readonly) NSString *valueStr;

/** 指定初始化构造方法 */
- (instancetype)initWithTitle:(NSString *)title Value:(NSString *)value;

@end

NS_ASSUME_NONNULL_END
