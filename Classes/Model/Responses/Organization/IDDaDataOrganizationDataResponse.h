//
//  IDDaDataOrganizationDataResponse.h
//  Improve Digital
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@class IDDaDataAddressResponse;
@class IDDaDataOrganizationNameResponse;
@class IDDaDataOrganizationManagmentResponse;
@class IDDaDataOrganizationStateResponse;
@class IDDaDataOrganizationOPFResponse;

@interface IDDaDataOrganizationDataResponse : JSONModel

@property (nonatomic, strong) NSString<Optional> *kpp;
@property (nonatomic, strong) NSString<Optional> *capital;
@property (nonatomic, strong) IDDaDataOrganizationManagmentResponse<Optional> *management;
@property (nonatomic, strong) NSString<Optional> *branch_type;
@property (nonatomic, strong) NSString<Optional> *branch_count;
@property (nonatomic, strong) NSString<Optional> *hid;
@property (nonatomic, strong) NSString<Optional> *type;
@property (nonatomic, strong) IDDaDataOrganizationStateResponse<Optional> *state;
@property (nonatomic, strong) IDDaDataOrganizationOPFResponse<Optional> *opf;
@property (nonatomic, strong) IDDaDataOrganizationNameResponse<Optional> *name;
@property (nonatomic, strong) NSString<Optional> *inn;
@property (nonatomic, strong) NSString<Optional> *ogrn;
@property (nonatomic, strong) NSString<Optional> *okved;
@property (nonatomic, strong) IDDaDataAddressResponse<Optional> *address;
@property (nonatomic, strong) NSNumber<Optional> *ogrn_date;
@property (nonatomic, strong) NSString<Optional> *okved_type;

@end
