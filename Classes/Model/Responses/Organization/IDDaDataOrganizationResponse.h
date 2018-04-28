//
//  IDDaDataOrganizationResponse.h
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@class IDDaDataOrganizationDataResponse;

@interface IDDaDataOrganizationResponse : JSONModel

@property (nonatomic, strong) NSString *value;
@property (nonatomic, strong) NSString *unrestricted_value;
@property (nonatomic, strong) IDDaDataOrganizationDataResponse<Optional> *data;

@end
