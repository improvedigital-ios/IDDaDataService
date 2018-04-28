//
//  Created by Андрей on 17.11.2017.
//  Copyright © 2017 Improve Digital. All rights reserved.
//


#import "IDDaDataFilterObject.h"


@implementation IDDaDataFilterObject

+ (instancetype)filterWithLevel:(IDFIASLevel)level {

    return [self filterFromLevel:level toLevel:level];
}

+ (instancetype)filterFromLevel:(IDFIASLevel)from toLevel:(IDFIASLevel)to {

    if( self == [IDDaDataFilterObject class] ) {

        IDDaDataFilterObject *filter = [[IDDaDataFilterObject alloc] init];
        filter.from = from;
        filter.to = to;
        return filter;
    }

    return nil;
}

@end
