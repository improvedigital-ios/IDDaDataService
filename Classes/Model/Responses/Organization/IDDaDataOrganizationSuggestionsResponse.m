//
//  IDDaDataOrganizationSuggestionsResponse.m
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "IDDaDataOrganizationSuggestionsResponse.h"
#import "IDDaDataOrganizationResponse.h"

@implementation IDDaDataOrganizationSuggestionsResponse

- (instancetype)initWithDictionary:(NSDictionary *)dict error:(NSError **)err {
    
    self = [super initWithDictionary:dict error:err];
    
    self.suggestions = [IDDaDataOrganizationResponse arrayOfModelsFromDictionaries:self.suggestions error:err];
    
    return self;
}

@end
