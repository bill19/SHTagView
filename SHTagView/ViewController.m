//
//  ViewController.m
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#import "ViewController.h"
#import "SHTagView.h"
#import "SHKitHeader.h"
#import "SHTagModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *mu = [NSMutableArray array];
    for (NSInteger index = 0; index < 100; index ++) {
        SHTagModel *model = [SHTagModel new];
        int R = (arc4random() % 256) ;
        int G = (arc4random() % 256) ;
        int B = (arc4random() % 256) ;
        model.tagTitle  = [NSString stringWithFormat:@"数=%ld",index];
        model.tagBgColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
        model.borderColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
        [mu addObject:model];
    }
    SHTagView *tagView = [[SHTagView alloc] initWithFrame:CGRectMake(0, 100,kTagScreenWidth , 200)];
    tagView.tagModels = mu;
    [self.view addSubview:tagView];
}

@end
