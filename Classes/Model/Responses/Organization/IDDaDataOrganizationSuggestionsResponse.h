//
//  IDDaDataOrganizationSuggestionsResponse.h
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@class IDDaDataOrganizationResponse;

@interface IDDaDataOrganizationSuggestionsResponse : JSONModel

@property (nonatomic, strong) NSArray<IDDaDataOrganizationResponse *><Optional> *suggestions;

@end
