//
//  Kid.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kid : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *age;
@property(nonatomic, strong) UIImage *picture;
@property(nonatomic, strong) NSMutableArray *activities;
@property(nonatomic, strong) NSMutableArray *books;

@end
