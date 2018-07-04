//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "Module3ViewController.h"
#import "Navigator.h"

@interface Module3ViewController () {
}

@end

@implementation Module3ViewController

- (void)loadView {
    [self createFields];
    [self createViews];
    [self createEvents];
}

- (void)createFields {

}

- (void)createViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"Module3PageView" owner: self options: nil];
    self.view = list.lastObject;

}

- (void)createEvents {

}

- (void)loadData {

}

@end
