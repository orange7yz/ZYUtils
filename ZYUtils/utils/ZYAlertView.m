//
//  ZYAlertView.m
//  AlertControllerTest
//
//  Created by yongzhang on 15/7/23.
//  Copyright (c) 2015年 yongzhang. All rights reserved.
//

#import "ZYAlertView.h"

@implementation ZYAlertView

+ (void)showInController:(UIViewController *)controller preferredStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelString:(NSString *)cancelString otherStrings:(NSArray *)otherStrings animation:(BOOL)animated clickAction:(ClickAction)clickAction;
{
    if([[[UIDevice currentDevice] systemVersion] floatValue] <= 8.0) {
        return;
    }
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        clickAction(0);
    }];
    [alertController addAction:cancelAction];
    [otherStrings enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherStrings[idx] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            clickAction(idx + 1);
        }];
        [alertController addAction:otherAction];
    }];
    [controller presentViewController:alertController animated:animated completion:nil];
}
@end
