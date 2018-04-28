//
// Created by Vladimir Prigarin on 26/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//

#import "IDDaDataRequestBuilder.h"


@implementation IDDaDataRequestBuilder

- (NSDictionary *)defaultHeaderFields {

    return @{
            @"Content-Type" : @"application/json",
            @"Accept" : @"application/json",
    };
}

- (NSDictionary *)headerFieldsWithApiKey:(NSString *)apiKey {

    NSDictionary *authorizationHeaderField = @{
            @"Authorization" : [NSString stringWithFormat: @"Token %@", apiKey]
    };

    NSMutableDictionary *mutableDictionary = [self defaultHeaderFields].mutableCopy;
    [mutableDictionary addEntriesFromDictionary:authorizationHeaderField];

    return mutableDictionary.copy;
}

- (NSDictionary *)bodyParamsWithQuery:(NSString *)queryString responsesCount:(NSNumber *)responsesCount {

    return @{
            @"query" : queryString,
            @"count" : responsesCount
    };
}

- (NSURLRequest *)requestWithURLString:(NSString *)urlString headerFields:(NSDictionary *)headerFields bodyParams:(NSDictionary *)bodyParams {

    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

    [headerFields enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [request setValue:obj forHTTPHeaderField:key];
    }];

    NSData *body = [NSJSONSerialization dataWithJSONObject:bodyParams options:NSJSONWritingPrettyPrinted error:nil];
    [request setHTTPBody:body];
    [request setHTTPMethod:@"POST"];

    return request;
}

@end