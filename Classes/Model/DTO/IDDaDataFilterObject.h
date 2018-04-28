//
//  Created by Андрей on 17.11.2017.
//  Copyright © 2017 Improve Digital. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "IDFIASLevel.h"


@interface IDDaDataFilterObject : NSObject

@property (nonatomic, assign) IDFIASLevel from;
@property (nonatomic, assign) IDFIASLevel to;

+ (instancetype)filterWithLevel:(IDFIASLevel)level;
+ (instancetype)filterFromLevel:(IDFIASLevel)from toLevel:(IDFIASLevel)to;

@end
