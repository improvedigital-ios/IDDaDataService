//
//  IDDaDataOrganizationOPFResponse.m
//  Example
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "IDDaDataOrganizationOPFResponse.h"

@implementation IDDaDataOrganizationOPFResponse

+ (JSONKeyMapper *)keyMapper {
    
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  
                                                                  @"type" : @"type",
                                                                  @"code" : @"code",
                                                                  @"full" : @"full",
                                                                  @"shortName" : @"short"
                                                                  
                                                                  }];
}

@end
