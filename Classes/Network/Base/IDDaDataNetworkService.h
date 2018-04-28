//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import <ReactiveObjC/ReactiveObjC.h>


@interface IDDaDataNetworkService : NSObject

- (RACSignal *)executeRequest:(NSURLRequest *)request responseType:(Class)responseType;

@end