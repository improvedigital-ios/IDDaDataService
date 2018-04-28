//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import <JSONModel/JSONModel.h>
#import <AFNetworking/AFHTTPSessionManager.h>
#import <ReactiveObjC/RACSignal.h>
#import "IDDaDataNetworkService.h"


@interface IDDaDataNetworkService ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;
@property (nonatomic, strong) NSDate *lastRequestDate;
@property (nonatomic, copy) dispatch_block_t dispatchBlock;

@end

@implementation IDDaDataNetworkService

- (instancetype)init {

    self = [super init];

    [self configureSessionManager];

    return self;
}

static const NSTimeInterval timeoutInterval = 10.0f;

- (void)configureSessionManager {

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];

    configuration.timeoutIntervalForRequest = timeoutInterval;

    AFHTTPSessionManager *sessionManager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration: configuration];

    sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
    sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];

    _sessionManager = sessionManager;
}

- (RACSignal *)executeRequest:(NSURLRequest *)request responseType:(Class)responseType {

    @weakify(self);
    id block = ^(id<RACSubscriber> subscriber, void (^successHandler)(JSONModel *), void (^errorHandler)(NSError *)) {
        @strongify(self);

        [self executeRequest:request responseType:responseType successHandler:successHandler errorHandler:errorHandler];
    };

    return [self safeLazilyStartOnMainThreadWithBlock:block];
}


#pragma mark - Private
- (void)executeRequest:(NSURLRequest *)request responseType:(Class)responseType successHandler:(void (^)(__kindof JSONModel *))successHandler errorHandler:(void (^)(NSError *error))errorHandler {

    id resultSuccessHandler = ^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {

        if( [self tryPerformErrorHandler:errorHandler withError:error] ) {
            return;
        }

        JSONModel *result = [[responseType alloc] initWithDictionary:responseObject error:&error];

        if( [self tryPerformErrorHandler:errorHandler withError:error] ) {
            return;
        }

        if( nil != successHandler) {
            successHandler(result);
        }
    };

    NSURLSessionDataTask *dataTask = [self.sessionManager dataTaskWithRequest:request
                                                               uploadProgress:nil
                                                             downloadProgress:nil
                                                            completionHandler:resultSuccessHandler];
    [dataTask resume];
}

- (BOOL)tryPerformErrorHandler:(void (^)(NSError *error))errorHandler withError:(NSError *)error {

    if( nil != error ) {

        if( nil != errorHandler ) {
            errorHandler(error);
        }

        return YES;
    }

    return NO;
}

#pragma mark - Common
- (RACSignal *)safeLazilyStartOnMainThreadWithBlock:(void (^)(id<RACSubscriber> subscriber, void (^successHandler)(NSArray *suggestions), void (^errorHandler)(NSError *error)))block {

    @weakify(self);
    return [RACSignal startLazilyWithScheduler:[RACScheduler mainThreadScheduler] block:^(id<RACSubscriber> subscriber) {
        @strongify(self);

        id safeBlock = ^{

            id successHandler = [self successHandlerForSubscriber:subscriber];
            id errorHandler = [self errorHandlerForSubscriber:subscriber];

            block(subscriber, successHandler, errorHandler);
        };

        [self safeBlock:safeBlock];
    }];
}

static NSInteger const kSafePeriodSecondsCount = 1;

- (void)safeBlock:(void(^)(void))block {

    if( nil == self.lastRequestDate ) {

        self.lastRequestDate = [NSDate date];
        block();
        return;
    }

    NSDateComponents *periodDateComponent = [[NSCalendar currentCalendar] components:NSCalendarUnitSecond fromDate:self.lastRequestDate toDate:[NSDate date] options:0];

    self.lastRequestDate = [NSDate date];
    if( [periodDateComponent second] > kSafePeriodSecondsCount ) {
        block();
        return;
    }

    [self updateDispatchBlockWithBlock:block];
}

- (void)updateDispatchBlockWithBlock:(void(^)(void))block {

    if( nil != self.dispatchBlock ) {
        dispatch_block_cancel(self.dispatchBlock);
    }

    self.dispatchBlock = dispatch_block_create(0, ^{
        block();
    });

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(kSafePeriodSecondsCount * NSEC_PER_SEC)), dispatch_get_main_queue(), self.dispatchBlock);
}

- (void (^)(NSArray *suggestions))successHandlerForSubscriber:(id<RACSubscriber>)subscriber {

    return ^(NSArray *suggestions) {
        [subscriber sendNext:suggestions];
        [subscriber sendCompleted];
    };
}

- (void (^)(NSError *error))errorHandlerForSubscriber:(id<RACSubscriber>)subscriber {

    return ^(NSError *error) {
        [subscriber sendError:error];
    };
}

@end