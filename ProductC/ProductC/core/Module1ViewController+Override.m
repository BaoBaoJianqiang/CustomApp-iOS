//
//  Module1ViewController+Override.m
//  ProductC
//
//  Created by tianxuejun on 2017/3/8.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

#import "Module1ViewController+Override.h"

@implementation Module1ViewController (Override)

- (NSString *)getModule1PageViewXibPath
{
    return [[NSBundle mainBundle] bundlePath];
}

@end
