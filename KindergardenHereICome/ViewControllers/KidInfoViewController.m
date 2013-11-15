//
//  KidInfoViewController.m
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "KidInfoViewController.h"
#import "ApplicationState.h"
#import "Kid.h"

@interface KidInfoViewController ()

@end

@implementation KidInfoViewController

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
    [self.kidAgeLabel setText:[NSString stringWithFormat:@"Age: %@", [ApplicationState getInstance].currentKid.age]];
    [self.kidNameLabel setText:[ApplicationState getInstance].currentKid.name];
    [self.kidPortraitImageView setImage:[ApplicationState getInstance].currentKid.picture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
