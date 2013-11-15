//
//  Book.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *author;
@property(nonatomic, strong) NSString *bookDescription;
@property(nonatomic, strong) UIImage *picture;
@property(nonatomic, strong) UIImage *userPicture;
@property(nonatomic, strong) NSMutableArray *tags;
@property(nonatomic) BOOL *childHasRead;

@end
