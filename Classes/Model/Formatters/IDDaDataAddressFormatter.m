//
// Created by Vladimir Prigarin on 30/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import "IDDaDataAddressFormatter.h"
#import "IDDaDataAddressPlainObject.h"


@implementation IDDaDataAddressFormatter

- (NSString *)definitionForAddress:(IDDaDataAddressPlainObject *)address {

    NSString *definition = [NSString string];

    definition = [self appendString:@"Регион/" toString:definition ifExistObject:address.region];
    definition = [self appendString:@"Населеный пункт/" toString:definition ifExistObject:address.settlement];
    definition = [self appendString:@"Город/" toString:definition ifExistObject:address.city];
    definition = [self appendString:@"Улица/" toString:definition ifExistObject:address.street];
    definition = [self appendString:@"Дом/" toString:definition ifExistObject:address.house];

    return definition;
}

#pragma mark - Helpers
- (NSString *)appendString:(NSString *)string toString:(NSString *)sourceString ifExistObject:(id)object {

    if( nil != object && NO == [object isKindOfClass:NSNull.class] ) {
        return [sourceString stringByAppendingString:string];
    }

    return sourceString;
}

@end