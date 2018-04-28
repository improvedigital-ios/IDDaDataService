//
//  IDDaDataAddressResponse.h
//  objc.shoploan
//
//  Created by Наиль  on 11.09.17.
//  Copyright © 2017 Improve Digital. All rights reserved.
//


#import <JSONModel/JSONModel.h>

@class IDDaDataAddressDataResponse;
@class IDDaDataAddressPlainObject;


@interface IDDaDataAddressResponse : JSONModel

@property (nonatomic, strong) NSString *value;
@property (nonatomic, strong) NSString *unrestricted_value;
@property (nonatomic, strong) IDDaDataAddressDataResponse<Optional> *data;

@property (nonatomic, assign, readonly) IDDaDataAddressPlainObject *plainObject;

@end
