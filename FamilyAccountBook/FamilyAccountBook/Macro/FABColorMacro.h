//
//  FABColorMacro.h
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#ifndef FABColorMacro_h
#define FABColorMacro_h

/** 带透明度的颜色 */
#define UIColorFromRGBA(rgbValue, iAlpha) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:iAlpha]

/** 透明度默认1.0的颜色 */
#define UIColorFromRGB(rgbValue)        UIColorFromRGBA(rgbValue, 1.0f)

/** 白色 */
#define kWhiteColor                                 UIColorFromRGB(0xffffff)
/**  navigationbar tabbar默认字，深灰色 */
#define kBarTitleTextColor                       UIColorFromRGB(0x333333)
/** 主色调 橙色 */
#define kMainCommonColor                    UIColorFromRGB(0xff632c)
/** Tabbar 灰色 */
#define kTabbarGrayColor                        UIColorFromRGB(0x7A7E83)

#endif /* FABColorMacro_h */
