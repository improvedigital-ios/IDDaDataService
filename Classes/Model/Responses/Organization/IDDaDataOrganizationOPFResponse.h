//
//  IDDaDataOrganizationOPFResponse.h
//  Example
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "JSONModel.h"

@interface IDDaDataOrganizationOPFResponse : JSONModel

@property (nonatomic, strong) NSString<Optional> *type;
@property (nonatomic, strong) NSString<Optional> *code;
@property (nonatomic, strong) NSString<Optional> *full;
@property (nonatomic, strong) NSString<Optional> *shortName;

@end
