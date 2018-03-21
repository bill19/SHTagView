//
//  SHTagCell.m
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import "SHTagCell.h"
@interface SHTagCell()

@property (nonatomic, weak) UILabel *tagLabel;
@end

@implementation SHTagCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupSubViews];
    }
    return self;
}

- (void)setupSubViews {
    CGFloat padding = 3.0f;
    UILabel *tagLabel = [[UILabel alloc] init];
    tagLabel.backgroundColor = [UIColor yellowColor];
    tagLabel.frame = CGRectMake(padding, padding, self.bounds.size.width - 2 * padding, self.bounds.size.height - 2 * padding);
    _tagLabel = tagLabel;
    [self.contentView addSubview:_tagLabel];
}

- (void)setTagModel:(SHTagModel *)tagModel {
    _tagModel = tagModel;
    _tagLabel.text = _tagModel.tagTitle;
    _tagLabel.backgroundColor = _tagModel.tagBgColor;
    _tagLabel.layer.borderColor = _tagModel.borderColor.CGColor;
    _tagLabel.layer.borderWidth = .3f;
    _tagLabel.layer.masksToBounds = YES;
    _tagLabel.layer.cornerRadius = 5.0;
}

@end
