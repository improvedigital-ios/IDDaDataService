//
//  IDDaDataAddressSuggestionsResponse.m
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "IDDaDataAddressSuggestionsResponse.h"
#import "IDDaDataAddressResponse.h"

@implementation IDDaDataAddressSuggestionsResponse

- (instancetype)initWithDictionary:(NSDictionary *)dict error:(NSError **)err {
    
    self = [super initWithDictionary:dict error:err];
    
    self.suggestions = [IDDaDataAddressResponse arrayOfModelsFromDictionaries:self.suggestions error:err];
    
    return self;
}

@end
