//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDDaDataValuePlainObject;

@interface IDDaDataAddressPlainObject : NSObject

@property (nonatomic, strong) NSString *value;

@property (nonatomic, strong) NSString *postalCode;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *kladrId;
@property (nonatomic, strong) NSString *fiasId;
@property (nonatomic, strong) NSString *fiasLevel;

@property (nonatomic, strong) IDDaDataValuePlainObject *region;
@property (nonatomic, strong) IDDaDataValuePlainObject *area;
@property (nonatomic, strong) IDDaDataValuePlainObject *city;
@property (nonatomic, strong) IDDaDataValuePlainObject *settlement;
@property (nonatomic, strong) IDDaDataValuePlainObject *street;
@property (nonatomic, strong) IDDaDataValuePlainObject *house;
@property (nonatomic, strong) IDDaDataValuePlainObject *block;
@property (nonatomic, strong) IDDaDataValuePlainObject *flat;

@end
