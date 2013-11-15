//
//  ApplicationState.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ApplicationState.h"

@implementation ApplicationState

+ (ApplicationState *)getInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

-(void) initializeData
{
    self.currentKid = [[Kid alloc] init];

    for (int i = 0; i<10; i++) {
        Book *book = [[Book alloc] init];
        book.title = @"My Book Title";
        [self.currentKid.books addObject:book];

        Activity *activity = [[Activity alloc] init];
        activity.title = @"My Book Title";
        [self.currentKid.activities addObject:activity];
    }
    
}




@end
