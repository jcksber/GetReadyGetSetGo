//
//  Activity.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "Activity.h"

@implementation Activity

-(id)init
{
    self = [super init];
    if (self) {
        _title = @"";
        _learningInfo = @"";
        _summary = @"";
        _picture = nil;
        _userPicture = nil;
        _tags = [[NSMutableArray alloc] init];
        _childHasCompleted = NO;
    }
    
    return self;
}

@end
