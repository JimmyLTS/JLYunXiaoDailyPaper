//
//  HttpTool.m
//  JLZhiHuDailyPaper
//
//  Created by wanglong on 16/2/17.
//  Copyright © 2016年 Jimmy. All rights reserved.
//

#import "HttpTool.h"
#import "AFNetworking.h"

@implementation HttpTool

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    
    [mgr GET:url parameters:params success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        if (success) {
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        if (failure) {
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
            failure(error);
        }
    }];
}

@end
