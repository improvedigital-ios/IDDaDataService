//
// Created by Vladimir Prigarin on 26/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface IDDaDataRequestBuilder : NSObject

- (NSDictionary *)defaultHeaderFields;
- (NSDictionary *)headerFieldsWithApiKey:(NSString *)apiKey;
- (NSDictionary *)bodyParamsWithQuery:(NSString *)queryString responsesCount:(NSNumber *)responsesCount;
- (NSURLRequest *)requestWithURLString:(NSString *)urlString headerFields:(NSDictionary *)headerFields bodyParams:(NSDictionary *)bodyParams;

@end