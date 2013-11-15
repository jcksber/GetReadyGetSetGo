//
//  ApplicationState.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Activity.h"
#import "Kid.h"

@interface ApplicationState : NSObject

+ (ApplicationState *)getInstance;

@property (nonatomic, strong) Book *currentBook;
@property (nonatomic, strong) Activity *currentActivity;
@property (nonatomic, strong) Kid *currentKid;


@end
