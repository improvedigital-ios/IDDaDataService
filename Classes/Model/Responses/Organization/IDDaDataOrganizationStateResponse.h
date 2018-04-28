//
//  IDDaDataOrganizationStateResponse.h
//  Example
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "JSONModel.h"

@interface IDDaDataOrganizationStateResponse : JSONModel

@property (nonatomic, strong) NSString<Optional> *status;
@property (nonatomic, strong) NSNumber<Optional> *actuality_date;
@property (nonatomic, strong) NSNumber<Optional> *registration_date;
@property (nonatomic, strong) NSNumber<Optional> *liquidation_date;

@end
