//
//  ActivityListManager.h
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Activity.h"

@interface ActivityListManager : NSObject

+ (ActivityListManager *)getInstance;
- (void) initializeData;

@property(nonatomic, strong) NSMutableArray *activities;
@property(nonatomic, strong) Activity *currentActivity;

- (NSArray *)allTags;
- (Activity *)randomActivity;
- (NSArray *)activitiesWithTag:(NSString *)tag;


@end
