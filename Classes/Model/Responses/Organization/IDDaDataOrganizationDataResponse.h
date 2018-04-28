//
//  IDDaDataOrganizationDataResponse.h
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@class IDDaDataAddressResponse;
@class IDDaDataOrganizationNameResponse;

@interface IDDaDataOrganizationDataResponse : JSONModel

@property (nonatomic, strong) IDDaDataAddressResponse<Optional> *address;
@property (nonatomic, strong) IDDaDataOrganizationNameResponse<Optional> *name;

@end
