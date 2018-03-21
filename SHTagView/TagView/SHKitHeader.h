//
//  SHKitHeader.h
//  SHTagView
//
//  Created by HaoSun on 2018/3/21.
//  Copyright © 2018年 SHKIT. All rights reserved.
//

#ifndef SHKitHeader_h
#define SHKitHeader_h

#define kTagView_H kTagScreenWidth * 0.75
#define kTagScreenWidth [UIScreen mainScreen].bounds.size.width
#define kTagScreenHeight [UIScreen mainScreen].bounds.size.height
#define SafeAreaTopHeight (kTagScreenHeight == 812.0 ? 88 : 64)
#define kTagPageControlHeight 40.0f
#define kTagStatuBarHeight (kTagScreenHeight == 812.0 ? 44 : 20)

#endif /* SHKitHeader_h */
