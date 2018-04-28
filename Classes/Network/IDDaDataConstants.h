//
//  IDDadataConstants.h
//  AFA
//
//  Created by Vladimir Prigarin on 27/03/2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#ifndef IDDadataConstants_h
#define IDDadataConstants_h

#define BASE_DADATA_ADDRESS @"https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest"
static NSString *const kDadataAddressURL = BASE_DADATA_ADDRESS @"/address";
static NSString *const kDadataOrganizationURL = BASE_DADATA_ADDRESS @"/party";

//uncomment this before integrate logic with this requests
//static NSString *const kDadataFullnameURL = BASE_DADATA_ADDRESS @"/fullname";
//static NSString *const kDadataBankURL = BASE_DADATA_ADDRESS @"/bank";
//static NSString *const kDadataEmailURL = BASE_DADATA_ADDRESS @"/email";


#endif /* IDDadataConstants_h */
