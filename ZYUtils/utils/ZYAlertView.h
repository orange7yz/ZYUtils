//
//  ZYAlertView.h
//  AlertControllerTest
//
//  Created by yongzhang on 15/7/23.
//  Copyright (c) 2015年 yongzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^ClickAction)(NSInteger selectedIndex);

@interface ZYAlertView : NSObject

+ (void)showInController:(UIViewController *)controller preferredStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelString:(NSString *)cancelString otherStrings:(NSArray *)otherStrings animation:(BOOL)animated clickAction:(ClickAction)clickAction;



@end
