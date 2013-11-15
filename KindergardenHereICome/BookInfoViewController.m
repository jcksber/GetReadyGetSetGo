//
//  BookInfoViewController.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "BookInfoViewController.h"
#import "ApplicationState.h"
#import "Book.h"

@interface BookInfoViewController ()

@property (strong, nonatomic) IBOutlet UILabel *bookTitle;
@property (strong, nonatomic) IBOutlet UILabel *bookAuthor;
@property (strong, nonatomic) IBOutlet UITextView *bookDescription;
@property (strong, nonatomic) IBOutlet UIImageView *bookCoverImageView;

@property (weak, nonatomic) IBOutlet UIImageView *checkboxImageView;
@property (weak, nonatomic) IBOutlet UIButton *readButton;
@property (weak, nonatomic) IBOutlet UIButton *shareOnFacebook;
@property (weak, nonatomic) IBOutlet UIButton *libraryButton;

@end

@implementation BookInfoViewController

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
    [self.readButton addTarget:self action:@selector(readButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.shareOnFacebook addTarget:self action:@selector(shareOnFacebookTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.libraryButton addTarget:self action:@selector(libraryButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void) viewWillAppear:(BOOL)animated
{
    [[self bookDescription] setText:[self.book bookDescription]];
    [[self bookTitle] setText:[self.book title]];
    [[self bookAuthor] setText:[self.book author]];
    [[self bookCoverImageView] setImage:[self.book picture]];
    [self setTitle:@"Book"];
    
    self.checkboxImageView.hidden = !self.book.childHasRead;
    
}

-(void)readButtonTapped{
    self.book.childHasRead = !self.book.childHasRead;
    self.checkboxImageView.hidden = !self.book.childHasRead;
}

-(void)shareOnFacebookTapped{
    [self.book shareOnFacebookFromViewController:self];
}

-(void)libraryButtonTapped{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
