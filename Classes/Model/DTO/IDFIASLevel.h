//
//  Created by Андрей on 17.11.2017.
//  Copyright © 2017 Improve Digital. All rights reserved.
//

#ifndef IDFiasLevel_h
#define IDFiasLevel_h

typedef NS_ENUM(NSInteger, IDFIASLevel) {
    IDFIASLevelCountry = 0,
    IDFIASLevelRegion = 1,
    IDFIASLevelArea = 3,
    IDFIASLevelCity = 4,
    IDFIASLevelCityDistrict = 5,
    IDFIASLevelSettlement = 6,
    IDFIASLevelStreet = 7,
    IDFIASLevelHouse = 8,
    IDFIASLevelPlanStructure = 65,
    IDFIASLevelAdditionalTerritory = 90,
    IDFIASLevelAdditionalTerritoryStreet = 91,
    IDFIASLevelForeignOrEmpty = -1,
};

#endif /* IDFiasLevel_h */
