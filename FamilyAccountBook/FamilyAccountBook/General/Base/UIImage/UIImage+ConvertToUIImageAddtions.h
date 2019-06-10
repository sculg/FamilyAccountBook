//
//  UIImage+ConvertToUIImageAddtions.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/10.
//  Copyright © 2019 sculg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ConvertToUIImageAddtions)

+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
