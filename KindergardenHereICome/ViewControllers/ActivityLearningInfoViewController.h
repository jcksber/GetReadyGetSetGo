//
//  ActivityLearningInfoViewController.h
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/16.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Activity.h"

@interface ActivityLearningInfoViewController : UIViewController

@property(nonatomic,strong) Activity *activity;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *learningInfo;
@property (weak, nonatomic) IBOutlet UIImageView *icon;

@end
