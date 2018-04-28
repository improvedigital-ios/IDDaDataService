//
// Created by Vladimir Prigarin on 30/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
@class IDDaDataAddressPlainObject;

@interface IDDaDataAddressFormatter : NSObject

- (NSString *)definitionForAddress:(IDDaDataAddressPlainObject *)address;

@end
