//
//  SHTagModel.h
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SHTagModel : NSObject

/**
 文字信息
 */
@property (nonatomic, copy) NSString *tagTitle;

/**
 背景颜色
 */
@property (nonatomic, strong) UIColor *tagBgColor;

/**
 边框颜色
 */
@property (nonatomic, strong) UIColor *borderColor;
+ (UICollectionViewLayout *)creatHomeLayout;

@end
