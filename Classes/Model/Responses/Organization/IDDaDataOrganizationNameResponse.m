//
//  IDDaDataOrganizationNameResponse.m
//  objc.shoploan
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "IDDaDataOrganizationNameResponse.h"

@implementation IDDaDataOrganizationNameResponse

+ (JSONKeyMapper *)keyMapper {
    
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  
                                                                  @"full_with_opf" : @"full_with_opf",
                                                                  @"short_with_opf" : @"short_with_opf",
                                                                  @"latin" : @"latin",
                                                                  @"full" : @"full",
                                                                  @"shortName" : @"short"
                                                                  
                                                                  }];
}

@end
