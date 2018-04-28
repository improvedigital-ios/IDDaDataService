//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@class IDDaDataValuePlainObject;


//NOTE: be carefull, this object used for create plain object using KVO
@interface IDDaDataAddressDataResponse : JSONModel

@property (nonatomic, strong) NSString<Optional> *country;
@property (nonatomic, strong) NSString<Optional> *postal_code;
@property (nonatomic, strong) NSString<Optional> *kladr_id;
@property (nonatomic, strong) NSString<Optional> *fias_id;
@property (nonatomic, strong) NSString<Optional> *fias_level;

@property (nonatomic, strong) NSString<Optional> *region_with_type;
@property (nonatomic, strong) NSString<Optional> *region_type;
@property (nonatomic, strong) NSString<Optional> *region_type_full;
@property (nonatomic, strong) NSString<Optional> *region;

@property (nonatomic, strong) NSString<Optional> *area_with_type;
@property (nonatomic, strong) NSString<Optional> *area_type;
@property (nonatomic, strong) NSString<Optional> *area_type_full;
@property (nonatomic, strong) NSString<Optional> *area;

@property (nonatomic, strong) NSString<Optional> *city_with_type;
@property (nonatomic, strong) NSString<Optional> *city_type;
@property (nonatomic, strong) NSString<Optional> *city_type_full;
@property (nonatomic, strong) NSString<Optional> *city;

@property (nonatomic, strong) NSString<Optional> *settlement_with_type;
@property (nonatomic, strong) NSString<Optional> *settlement_type;
@property (nonatomic, strong) NSString<Optional> *settlement_type_full;
@property (nonatomic, strong) NSString<Optional> *settlement;

@property (nonatomic, strong) NSString<Optional> *street_with_type;
@property (nonatomic, strong) NSString<Optional> *street_type;
@property (nonatomic, strong) NSString<Optional> *street_type_full;
@property (nonatomic, strong) NSString<Optional> *street;

@property (nonatomic, strong) NSString<Optional> *house_type;
@property (nonatomic, strong) NSString<Optional> *house_type_full;
@property (nonatomic, strong) NSString<Optional> *house;

@property (nonatomic, strong) NSString<Optional> *block_type;
@property (nonatomic, strong) NSString<Optional> *block_type_full;
@property (nonatomic, strong) NSString<Optional> *block;

@property (nonatomic, strong) NSString<Optional> *flat_type;
@property (nonatomic, strong) NSString<Optional> *flat_type_full;
@property (nonatomic, strong) NSString<Optional> *flat;

- (IDDaDataValuePlainObject *)valuePlainObjectForKey:(NSString *)key;
- (IDDaDataValuePlainObject *)shortValuePlainObjectForKey:(NSString *)key;

@end