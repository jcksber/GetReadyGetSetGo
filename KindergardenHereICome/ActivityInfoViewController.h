//
//  ActivityInfoViewController.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Activity.h"

@interface ActivityInfoViewController : UIViewController

@property(nonatomic,strong) Activity *activity;

@property (weak, nonatomic) IBOutlet UITextView *summary;
@property (weak, nonatomic) IBOutlet UILabel *actTitle;
@property (weak, nonatomic) IBOutlet UIImageView *icon;
- (IBAction)completed:(id)sender;
- (IBAction)shareOnFacebook:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *checkmark;

@end
