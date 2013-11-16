//
//  HomeViewController.h
//  KindergardenHereICome
//
//  Created by Jack Kasbeer on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"
#import "Activity.h"

@interface HomeViewController: UIViewController

@property (strong, nonatomic) IBOutlet UILabel *activityTitle;
@property (strong, nonatomic) IBOutlet UILabel *activityDescription;
@property (strong, nonatomic) IBOutlet UIImageView *activityIcon;
@property (strong, nonatomic)Activity *activity;

@property (strong, nonatomic) IBOutlet UIImageView *bookCoverImageView;
@property (strong, nonatomic) IBOutlet UILabel *bookTitle;
@property (strong, nonatomic) IBOutlet UILabel *bookAuthor;
@property (strong, nonatomic)Book *book;

- (IBAction)shareActivityOnFacebook:(id)sender;
- (IBAction)shareActivityOnTwitter:(id)sender;

- (IBAction)shareBookOnFacebook:(id)sender;
- (IBAction)shareBookOnTwitter:(id)sender;


@end
