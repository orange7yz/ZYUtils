//
//  ZYMacro.h
//  ZYUtils
//
//  Created by yongzhang on 15/10/9.
//  Copyright © 2015年 yongzhang. All rights reserved.
//

#ifndef ZYMacro_h
#define ZYMacro_h

#define DATE_TIME_MINUTEX    (60)
#define DATE_TIME_HOURS      (60*60)
#define DATE_TIME_DAYTIME    (24*60*60)
#define DATE_TIME_WEEKTIME   (7*24*60*60)

#define NotNilArray(a)                      (a ? a : @[])
#define NotNilString(s)                     (s ? s : @"")

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define IS_IPHONE_DEVICE ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)

#define ApplicationDelegate                 ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define NavBarHeight                        self.navigationController.navigationBar.bounds.size.height
#define TabBarHeight                        self.tabBarController.tabBar.bounds.size.height
#define StatusBarHeight                     [[UIApplication sharedApplication] statusBarFrame].size.height
#define ScreenScale                         [UIScreen mainScreen].scale

#define ScreenWidth (!SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0") ? (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height) : [[UIScreen mainScreen] bounds].size.width)

#define ScreenHeight (!SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0") ? (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width) : [[UIScreen mainScreen] bounds].size.height)

#define AppRootNavigationController (UINavigationController *)({ \
UIWindow *rootWindow = [[UIApplication sharedApplication].windows firstObject];\
[rootWindow rootViewController];})

#define UIColorFromRGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define UIColorFromRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define UIColorFromGREY(color) [UIColor colorWithRed:color/255.0 green:color/255.0 blue:color/255.0 alpha:1]
#define UIColorFromHEXColor(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define RGBA_COLOR(R, G, B, A) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:A]




#endif /* ZYMacro_h */
