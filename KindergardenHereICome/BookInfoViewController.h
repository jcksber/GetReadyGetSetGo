//
//  BookInfoViewController.h
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookInfoViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *bookTitle;
@property (strong, nonatomic) IBOutlet UILabel *bookAuthor;
@property (strong, nonatomic) IBOutlet UITextView *bookDescription;
@property (strong, nonatomic) IBOutlet UIImageView *bookCoverImageView;


@end
