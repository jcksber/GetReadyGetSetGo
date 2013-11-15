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
    Book *book = [[Book alloc] init];
    book = [[ApplicationState getInstance] currentBook];
    [[self bookDescription] setText:[book bookDescription]];
    [[self bookTitle] setText:[book title]];
    [[self bookAuthor] setText:[book author]];
    [[self bookCoverImageView] setImage:[book picture]];
    [self setTitle:@"Today's Book"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
