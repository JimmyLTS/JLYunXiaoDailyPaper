//
//  CWAccountTool.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/19.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWAccount.h"

@interface CWAccountTool : NSObject

+ (void)saveAccount:(CWAccount *)account;

+ (CWAccount *)account;

@end
