//
//  AppBaseViewController.h
//  Core
//
//  Created by jianqiang on 17/3/7.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewController.h"

@interface AppBaseViewController : BaseViewController

- (bool)getValueFromConfig: (NSString*)key;

@end
