//
//  Activity.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject

@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *learningInfo;
@property(nonatomic, strong) NSString *summary;
@property(nonatomic, strong) UIImage *picture;
@property(nonatomic, strong) UIImage *userPicture;
@property(nonatomic, strong) NSArray *tags;
@property(nonatomic, strong) UIImage *icon;
@property(nonatomic) BOOL childHasCompleted;


@end
