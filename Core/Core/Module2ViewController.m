//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "Module2ViewController.h"
#import "Navigator.h"

@interface Module2ViewController () {
    
}

@end

@implementation Module2ViewController

- (void)loadView {
    [self createFields];
    [self createViews];
    [self createEvents];
}

- (void)createFields {

}

- (void)createViews {
    //1.从xib中获取View
    NSString * rescourcePath = [[NSBundle mainBundle] pathForResource:@"CoreBundle1" ofType:@"bundle"];
    NSBundle * bundle =[NSBundle bundleWithPath:rescourcePath];
    NSArray* list = [bundle loadNibNamed: @"Module2PageView" owner: self options: nil];
    self.view = list.lastObject;
}

- (void)createEvents {

}

- (void)loadData {

}

@end
