//
//  ActivityInfoViewController.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityInfoViewController.h"
#import "ActivityLearningInfoViewController.h"

@interface ActivityInfoViewController ()

@end

@implementation ActivityInfoViewController

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
    self.actTitle.text = self.activity.title;
    self.summary.text = self.activity.summary;
    self.icon.image = self.activity.icon;
    self.checkmark.hidden = !self.activity.childHasCompleted;
    
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
    self.actTitle.text = activity.title;
    self.summary.text = activity.summary;
    self.icon.image = self.activity.icon;
        self.checkmark.hidden = !self.activity.childHasCompleted;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ((ActivityLearningInfoViewController*)segue.destinationViewController).activity = _activity;    
}

- (IBAction)completed:(id)sender {
    self.activity.childHasCompleted =!self.activity.childHasCompleted;
        self.checkmark.hidden = !self.activity.childHasCompleted;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You've completed 3 Activities this week!" delegate:Nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alert show];
}

- (IBAction)shareOnFacebook:(id)sender {
    
    [_activity shareOnFacebookFromViewController:self];
}


@end
