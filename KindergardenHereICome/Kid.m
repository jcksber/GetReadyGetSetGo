//
//  Kid.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "Kid.h"

@implementation Kid

-(id)init
{
    self = [super init];
    if (self) {
        _name = @"Jennifer";
        _age = @"4";
        _activities = [[NSMutableArray alloc] init];
        _books = [[NSMutableArray alloc] init];
        _picture = [UIImage imageNamed:@"photo.png"];
    }
    
    return self;
}

@end
