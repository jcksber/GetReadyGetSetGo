//
//  ActivityListManager.m
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityListManager.h"

@implementation ActivityListManager

+ (ActivityListManager *)getInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (void) initializeData
{

}

- (Activity *)randomActivity
{
    return nil;
}

- (NSArray *)activitiesWithTag:(NSString *)tag
{
    return nil;
}


@end

