//
//  IDDaDataAddressSuggestionsResponse.h
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class IDDaDataAddressResponse;

@interface IDDaDataAddressSuggestionsResponse : JSONModel

@property (nonatomic, strong) NSArray<IDDaDataAddressResponse *><Optional> *suggestions;

@end
