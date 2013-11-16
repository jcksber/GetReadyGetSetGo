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
#import "ActivityListManager.h"

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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.parentViewController.navigationItem.title = @"Home";
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"Shake, baby, shake!");
        [self loadRandomActivityAndBook];
    }
}

-(void)loadRandomActivityAndBook
{
    [ApplicationState getInstance].currentActivity = [[ActivityListManager getInstance] randomActivity];
    [ApplicationState getInstance].currentBook = [self randomBook];
    
    self.todaysActivity =[ApplicationState getInstance].currentActivity;
    self.todaysBook=    [ApplicationState getInstance].currentBook ;
    
}

- (Book *)randomBook
{
    return [ [ApplicationState getInstance].currentKid.books objectAtIndex:(arc4random() % [ [ApplicationState getInstance].currentKid.books count])];
}

-(void)setTodaysActivity:(Activity *)todaysActivity
{
    _todaysActivity = todaysActivity;
    self.activityTitle.text = _todaysActivity.title;
    self.activityDescription.text = _todaysActivity.summary;
    self.activityIcon.image = _todaysActivity.icon;
}

-(void) setTodaysBook:(Book *)todaysBook
{
    _todaysBook = todaysBook;
    self.bookTitle.text = _todaysBook.title;
    self.bookAuthor.text = _todaysBook.author;
    self.bookCoverImageView.image = _todaysBook.picture;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadRandomActivityAndBook];
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
