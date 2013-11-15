//
//  Book.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)init
{
    self = [super init];
    if (self) {
        _title = @"";
        _author = @"";
        _bookDescription = @"";
        _picture = nil;
        _userPicture = nil;
        _tags = [[NSMutableArray alloc] init];
        _childHasRead = NO;
        
    }
    
    return self;
}

@end
