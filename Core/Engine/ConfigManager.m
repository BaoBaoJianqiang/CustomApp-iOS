//
//  ConfigManager
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "ConfigManager.h"
#import "SingletonScript.h"

@interface ConfigManager() {
    
}

@end

@implementation ConfigManager

SYNTHESIZE_SINGLETON_FOR_CLASS(ConfigManager);

@synthesize data;

-(void)fetchData {
    
    //default data
    NSString* rescourcePath = [[NSBundle mainBundle] pathForResource:@"CoreBundle1" ofType:@"bundle"];
    NSBundle* rescourceBundle =[NSBundle bundleWithPath:rescourcePath];
    
    NSString *plistPath = [rescourceBundle pathForResource:@"config" ofType:@"plist"];
    NSMutableDictionary* defaultData = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    //product data
    NSString *plistPath2 = [[NSBundle mainBundle] pathForResource:@"config" ofType:@"plist"];
    NSMutableDictionary* productData = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath2];
    
    [defaultData addEntriesFromDictionary:productData];
    self.data = defaultData;
    
    NSLog(@"self.data = %@", self.data);
}



@end
