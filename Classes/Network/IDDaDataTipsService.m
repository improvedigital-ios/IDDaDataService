//
//  Created by Андрей on 27.12.2017.
//  Copyright © 2017 Improve Digital. All rights reserved.
//


#import "IDDaDataTipsService.h"
#import "IDDaDataConstants.h"

#import "IDDaDataNetworkService.h"
#import "IDDaDataRequestBuilder.h"

// Responses
#import "IDDaDataAddressSuggestionsResponse.h"
#import "IDDaDataOrganizationSuggestionsResponse.h"

@interface IDDaDataTipsService ()

@property (nonatomic, strong) IDDaDataNetworkService *networkService;
@property (nonatomic, strong) IDDaDataRequestBuilder *requestBuilder;

@end


@implementation IDDaDataTipsService

- (instancetype)init {

    self = [super init];

    _networkService = [[IDDaDataNetworkService alloc] init];
    _requestBuilder = [[IDDaDataRequestBuilder alloc] init];
    _responsesCount = @(10);

    return self;
}
- (RACSignal *)addressesWithQuery:(NSString *)query filter:(IDDaDataFilterObject *)filter {

    NSMutableDictionary *mutableFields = [NSMutableDictionary dictionary];

    if( nil != filter ) {

        mutableFields[@"from_bound"] = @{
                @"value" : [self stringFromFIASLevel:filter.from]
        };
        mutableFields[@"to_bound"] = @{
                @"value" : [self stringFromFIASLevel:filter.to]
        };
    }

    NSURLRequest *request = [self requestWithURLString:kDadataAddressURL query:query body:mutableFields.copy];
    return [self.networkService executeRequest:request responseType:IDDaDataAddressSuggestionsResponse.class];
}

- (RACSignal *)organizationsWithQuery:(NSString *)query {
    
    NSURLRequest *request = [self requestWithURLString:kDadataOrganizationURL query:query body:@{}];
    return [self.networkService executeRequest:request responseType:IDDaDataOrganizationSuggestionsResponse.class];
}

#pragma mark - Common
- (NSURLRequest *)requestWithURLString:(NSString *)urlString query:(NSString *)queryString body:(NSDictionary *)bodyParams {

    NSAssert(nil != self.apiKey, @"ApiKey not set. You must set key before request executing");

    NSDictionary *headerFields = [self.requestBuilder headerFieldsWithApiKey:self.apiKey];
    NSDictionary *defaultParams = [self.requestBuilder bodyParamsWithQuery:queryString responsesCount:self.responsesCount];
    NSMutableDictionary *mutableParams = bodyParams.mutableCopy;
    [mutableParams addEntriesFromDictionary:defaultParams];
    NSDictionary *resultBodyParams = mutableParams.copy;

    NSURLRequest *request = [self.requestBuilder requestWithURLString:urlString headerFields:headerFields bodyParams:resultBodyParams];
    return request;
}

- (NSString *)stringFromFIASLevel:(IDFIASLevel)level {

    //TODO: add string values man.
    switch (level) {
        case IDFIASLevelRegion:
            return @"region";
        case IDFIASLevelArea:
            return @"area";
        case IDFIASLevelCity:
            return @"city";
        case IDFIASLevelSettlement:
            return @"settlement";
        case IDFIASLevelStreet:
            return @"street";
        case IDFIASLevelCountry:break;
        case IDFIASLevelCityDistrict:break;
        case IDFIASLevelHouse:break;
        case IDFIASLevelPlanStructure:break;
        case IDFIASLevelAdditionalTerritory:break;
        case IDFIASLevelAdditionalTerritoryStreet:break;
        case IDFIASLevelForeignOrEmpty:break;
    }

    return nil;
}

@end
