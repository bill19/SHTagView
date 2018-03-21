//
//  SHTagView.m
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import "SHTagView.h"
#import "SHTagCell.h"
#import "SHKitHeader.h"
@interface SHTagView()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) UICollectionView *collectionView;
@property (nonatomic, strong) NSArray <SHTagModel *>* tagDataSource;

@end

@implementation SHTagView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        [self setupCollectionView];
    }
    return self;
}

- (void)setupCollectionView {
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, kTagScreenWidth, kTagView_H) collectionViewLayout:[SHTagModel creatHomeLayout]];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.userInteractionEnabled = YES;
    collectionView.backgroundColor = [UIColor whiteColor];
    [collectionView registerClass:[SHTagCell class] forCellWithReuseIdentifier:kTagReuseIdentifier];
    _collectionView = collectionView;
    [self addSubview:_collectionView];

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SHTagCell *tagCell = [collectionView dequeueReusableCellWithReuseIdentifier:kTagReuseIdentifier forIndexPath:indexPath];
    tagCell.tagModel = [self modelForIndexPath:indexPath];
    return tagCell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tagDataSource.count;
}

- (NSInteger)numberOfSections {
    return 1;
}

- (SHTagModel *)modelForIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item < self.tagDataSource.count) {
        return self.tagDataSource[indexPath.item];
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(60, 40);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"---- %ld",indexPath.item);
}

- (NSArray<SHTagModel *> *)tagDataSource {
    if (!_tagDataSource) {
        _tagDataSource = [NSArray array];
    }
    return _tagDataSource;
}

- (void)setTagModels:(NSArray<SHTagModel *> *)tagModels {
    _tagModels = tagModels;
    self.tagDataSource = _tagModels;
    [self.collectionView reloadData];
}

@end
