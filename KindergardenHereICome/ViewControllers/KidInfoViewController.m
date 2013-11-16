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
#import "BookListViewController.h"

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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.parentViewController.navigationItem.title = @"Child";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"read"]) {
        ((BookListViewController*)segue.destinationViewController).showReadBooks = YES;
    }else     if ([segue.identifier isEqualToString:@"notread"]) {
        ((BookListViewController*)segue.destinationViewController).showReadBooks = NO;
    }
    
}

@end
