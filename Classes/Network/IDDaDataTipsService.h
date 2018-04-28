//
//  Created by Андрей on 27.12.2017.
//  Copyright © 2017 Improve Digital. All rights reserved.
//


#import <ReactiveObjC/ReactiveObjC.h>
#import "IDDaDataFilterObject.h"

@interface IDDaDataTipsService : NSObject

@property (nonatomic, copy) NSString *apiKey;
@property (nonatomic, strong) NSNumber *responsesCount;

- (RACSignal *)addressesWithQuery:(NSString *)query filter:(IDDaDataFilterObject *)filter;
- (RACSignal *)organizationsWithQuery:(NSString *)query;

@end
