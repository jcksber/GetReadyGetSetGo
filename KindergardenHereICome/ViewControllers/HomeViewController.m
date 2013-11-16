//
//  HomeViewController.m
//  KindergardenHereICome
//
//  Created by Jack Kasbeer on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "HomeViewController.h"
#import "ApplicationState.h"
#import "Book.h"
#import "Activity.h"

@interface HomeViewController ()

@property (strong, nonatomic) Book *todaysBook;
@property (strong, nonatomic) Activity *todaysActivity;

@end

@implementation HomeViewController

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
    
    
    //NEED A WAY TO GET A RANDOM BOOK AND ACTIVITY
    
	// Do any additional setup after loading the view.
}

-(void)shareActivityOnFacebookTapped{
    [self.activity shareOnFacebookFromViewController:self];
}

-(void)shareActivityOnTwitterTapped{
    [self.activity shareOnFacebookFromViewController:self];
}

-(void)shareBookOnFacebookTapped{
    [self.book shareOnFacebookFromViewController:self];
}

-(void)shareBookOnTwitterTapped{
    [self.book shareOnTwitterFromViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
