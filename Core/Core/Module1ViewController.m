//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "Module1ViewController.h"
#import "Navigator.h"
#import "ConfigManager.h"

@interface Module1ViewController () {
    UIButton* module2Button;
}

@end

@implementation Module1ViewController

- (void)loadView {
    [self createFields];
    [self createViews];
    [self createEvents];
}

- (void)createFields {

}

- (void)createViews {
    //1.从xib中获取View
    NSString * rescourcePath = [self getModule1PageViewXibPath];
    NSBundle * bundle =[NSBundle bundleWithPath:rescourcePath];
    NSArray* list = [bundle loadNibNamed: @"Module1PageView" owner: self options: nil];
    self.view = list.lastObject;
    
    module2Button = (UIButton*)[self.view viewWithTag: 400];
    
    if([self getValueFromConfig: @"show_button2"]) {
        [module2Button addTarget: self action: @selector(gotoModule2) forControlEvents:UIControlEventTouchUpInside];
    } else {
        [module2Button removeFromSuperview];
        //[module2Button setHidden: YES];
    }
}

- (NSString *)getModule1PageViewXibPath
{
    return [[NSBundle mainBundle] pathForResource:@"CoreBundle1" ofType:@"bundle"];
}

- (void)createEvents {
}

- (void)loadData {

}

- (void) gotoModule2 {
    NSString* url = @"Module2ViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: @"Jianqiang" forKey: @"UserName"];
    [data setValue: @"28" forKey: @"Age"];
    
    [Navigator navigateTo:url withData: data];
}

@end
