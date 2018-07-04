//
//  Navigator.m
//
//  Created by Jianqiang on 13-11-15.
//  Copyright (c) 2013年. All rights reserved.
//

#import "Navigator.h"
#import "BaseViewController.h"
#import "ConfigManager.h"

@implementation Navigator

@synthesize nav = _nav;

SYNTHESIZE_SINGLETON_FOR_CLASS(Navigator);

+ (void)navigateTo:(NSString *)viewController {
    [[self sharedNavigator] navigateTo:viewController withData:nil];
}

+ (void)navigateTo:(NSString *)viewController withData:(NSMutableDictionary *)param {
    [[self sharedNavigator] navigateTo:viewController withData:param];
}

- (void)navigateTo:(NSString *)viewController withData:(NSMutableDictionary*)param {
    
    NSDictionary* data = [ConfigManager getInstance].data;
    
    id config = [data valueForKey: viewController];    
    NSString* trueViewController = (NSString*)config[@"map"];
    if(trueViewController) {
        viewController = trueViewController;
    }
    
    BaseViewController * classObject = (BaseViewController *)[[NSClassFromString(viewController) alloc] init];
    classObject.param = param;
    
    [_nav pushViewController:classObject animated:YES];
}

@end
