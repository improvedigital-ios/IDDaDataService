//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import "IDDaDataAddressDataResponse.h"
#import "IDDaDataValuePlainObject.h"
#import "IDDaDataValueTypePlainObject.h"


@implementation IDDaDataAddressDataResponse


- (IDDaDataValuePlainObject *)valuePlainObjectForKey:(NSString *)key {

    NSAssert( nil != key, @"Key must be not nil" );
    if( nil == key ) {
        return nil;
    }

    IDDaDataValuePlainObject *value = [self shortValuePlainObjectForKey:key];
    value.valueWithType = [self valueForKey:[key stringByAppendingString:@"_with_type"]];

    return value;
}

- (IDDaDataValuePlainObject *)shortValuePlainObjectForKey:(NSString *)key {

    NSAssert( nil != key, @"Key must be not nil" );
    if( nil == key ) {
        return nil;
    }

    IDDaDataValuePlainObject *value = [[IDDaDataValuePlainObject alloc] init];
    value.value = [self valueForKey:key];

    IDDaDataValueTypePlainObject *type = [[IDDaDataValueTypePlainObject alloc] init];
    type.shortType = [self valueForKey:[key stringByAppendingString:@"_type"]];
    type.fullType = [self valueForKey:[key stringByAppendingString:@"_type_full"]];

    value.type = type;

    if( [self isObjectEmpty:value] ) {
        return nil;
    }

    return value;
}

- (BOOL)isObjectEmpty:(IDDaDataValuePlainObject *)object {

    BOOL result = YES;

    result = result & (nil == object.value);
    result = result & (nil == object.valueWithType);
    result = result & (nil == object.type.shortType);
    result = result & (nil == object.type.fullType);

    return result;
}

@end