//
// Created by Vladimir Prigarin on 29/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDDaDataValueTypePlainObject;

@interface IDDaDataValuePlainObject : NSObject

@property (nonatomic, strong) NSString *value;
@property (nonatomic, strong) NSString *valueWithType;
@property (nonatomic, strong) IDDaDataValueTypePlainObject *type;

@end
