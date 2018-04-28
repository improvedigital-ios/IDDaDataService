//
//  IDDaDataOrganizationNameResponse.h
//  Improve Digital
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface IDDaDataOrganizationNameResponse : JSONModel

@property (nonatomic, strong) NSString<Optional> *full_with_opf;
@property (nonatomic, strong) NSString<Optional> *short_with_opf;
@property (nonatomic, strong) NSString<Optional> *latin;
@property (nonatomic, strong) NSString<Optional> *full;
@property (nonatomic, strong) NSString<Optional> *shortName;

@end
