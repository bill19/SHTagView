//
//  SHTagModel.m
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import "SHTagModel.h"

@implementation SHTagModel

+ (UICollectionViewLayout *)creatHomeLayout {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.itemSize = CGSizeMake(60, 40);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.collectionView.showsVerticalScrollIndicator = 0;
    layout.collectionView.showsHorizontalScrollIndicator = 0;
    return layout;
}
@end
