//
//  IDDaDataAddressResponse.m
//  objc.shoploan
//
//  Created by Наиль  on 11.09.17.
//  Copyright © 2017 Improve Digital. All rights reserved.
//

#import "IDDaDataAddressResponse.h"
#import "IDDaDataAddressDataResponse.h"
#import "IDDaDataAddressPlainObject.h"
#import "IDDaDataValuePlainObject.h"

@implementation IDDaDataAddressResponse

- (IDDaDataAddressPlainObject *)plainObject {

    IDDaDataAddressPlainObject *plainObject = [[IDDaDataAddressPlainObject alloc] init];

    plainObject.value = self.value;
    plainObject.postalCode = self.data.postal_code;
    plainObject.country = self.data.country;
    plainObject.kladrId = self.data.kladr_id;
    plainObject.fiasId = self.data.fias_id;
    plainObject.fiasLevel = self.data.fias_level;

    plainObject.region = [self.data valuePlainObjectForKey:@"region"];
    plainObject.area = [self.data valuePlainObjectForKey:@"area"];
    plainObject.city = [self.data valuePlainObjectForKey:@"city"];
    plainObject.settlement = [self.data valuePlainObjectForKey:@"settlement"];
    plainObject.street = [self.data valuePlainObjectForKey:@"street"];

    plainObject.block = [self.data shortValuePlainObjectForKey:@"block"];
    plainObject.house = [self.data shortValuePlainObjectForKey:@"house"];
    plainObject.flat = [self.data shortValuePlainObjectForKey:@"flat"];

    return plainObject;
}

@end
