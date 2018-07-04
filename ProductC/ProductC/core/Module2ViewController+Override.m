//
//  Module2ViewController+Override.m
//  ProductC
//
//  Created by tianxuejun on 2017/3/8.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

#import "Module2ViewController+Override.h"

@implementation Module2ViewController (Override)

- (void)createViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"Module2_2PageView" owner: self options: nil];
    self.view = list.lastObject;
}

@end
