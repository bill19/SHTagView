//
//  SHTagCell.h
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHTagModel.h"

static NSString * kTagReuseIdentifier = @"SHTagCell";

@interface SHTagCell : UICollectionViewCell
@property (nonatomic, strong) SHTagModel *tagModel;
@end
