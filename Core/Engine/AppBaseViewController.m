//
//  AppBaseViewController.m
//  Core
//
//  Created by jianqiang on 17/3/7.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

#import "AppBaseViewController.h"
#import "ConfigManager.h"

@implementation AppBaseViewController

- (bool)getValueFromConfig: (NSString*)key {
    NSString* page = [NSString stringWithUTF8String:object_getClassName(self)];
    
    NSDictionary* data = [ConfigManager getInstance].data;
    
    id config = [data valueForKey: page];
    return [(NSNumber*)config[key] boolValue];
}

@end
