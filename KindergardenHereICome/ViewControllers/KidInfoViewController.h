//
//  KidInfoViewController.h
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KidInfoViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *kidNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *kidAgeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *kidPortraitImageView;

@end
