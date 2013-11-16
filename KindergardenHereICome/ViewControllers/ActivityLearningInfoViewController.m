//
//  ActivityLearningInfoViewController.m
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/16.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityLearningInfoViewController.h"

@interface ActivityLearningInfoViewController ()


@end

@implementation ActivityLearningInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.titleLabel.text = _activity.title;
    self.learningInfo.text = _activity.learningInfo;
    self.icon.image = _activity.icon;

        self.view.tintColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setActivity:(Activity *)activity
{
    _activity = activity;
    self.titleLabel.text = _activity.title;
    self.learningInfo.text = _activity.learningInfo;
    self.icon.image = _activity.icon;
}

@end
