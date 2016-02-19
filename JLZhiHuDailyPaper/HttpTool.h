//
//  HttpTool.h
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTool : NSObject

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id json))success failure:(void (^)(NSError *error))failure;

@end
