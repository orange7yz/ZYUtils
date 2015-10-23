//
//  ZYView.h
//  ZYUtils
//
//  Created by yongzhang on 15/10/23.
//  Copyright © 2015年 yongzhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYView : UIView

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable UIColor *boarderColor;
@property (nonatomic, assign) IBInspectable CGFloat boarderWith;

@end

@interface ZYImageView : UIView

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable UIColor *boarderColor;
@property (nonatomic, assign) IBInspectable CGFloat boarderWith;

@end

@interface ZYButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable UIColor *boarderColor;
@property (nonatomic, assign) IBInspectable CGFloat boarderWith;

@end
