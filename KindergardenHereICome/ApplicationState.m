//
//  ApplicationState.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ApplicationState.h"

@implementation ApplicationState

+ (ApplicationState *)getInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

-(void) initializeData
{
    
    self.currentKid = [[Kid alloc] init];
    self.activityListManager = [ActivityListManager getInstance];
    [self.activityListManager initializeData];
    self.currentActivity = [self.activityListManager currentActivity];

    [self setupBooks];
    self.currentBook = [self.currentKid.books firstObject];
        
    for (int i = 0; i<10; i++) {
        Activity *activity = [[Activity alloc] init];
        activity.title = @"My Book Title";
        [self.currentKid.activities addObject:activity];
        
        
    }
    
}

+(Book *)getNextBook
{
    //static int bookIndex = 0;
    Book *book = [[Book alloc] init];
    [book setAuthor:@"Eric Carle"];
    [book setTitle:@"The Very Hungry Caterpillar"];
    [book setBookDescription:@"A caterpillar eats a lot"];
    [book setPicture:[UIImage imageNamed:@"photo.png"]];
    book.childHasRead = true;
    
    return book;
}

-(void) setupBooks
{
    Book *book = [[Book alloc] init];
    [book setTitle:@"Doug Unplugged"];
    [book setAuthor:@"Dan Yaccarino"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"doug.jpg"]];
    book.tags = [@[@"Information, communication and technology literacy"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];

    book = [[Book alloc] init];
    [book setTitle:@"Follow the Line to School"];
    [book setAuthor:@"Laura Ljungkvist"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"follow.jpg"]];
    book.tags = [@[@"Information, Communication, and Technology literacy", @"Interactions between people and ther environment"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"How Many Jelly Beans? "];
    [book setAuthor:@"Andrea Menotti"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"howmany.jpg"]];
    book.tags = [@[@"Numbers", @"Number values", @"Pro-social relationship with peers"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"I Ain't Gonna Paint No More!"];
    [book setAuthor:@"Karen Beaumont"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"iaint.jpg"]];
    book.tags = [@[@"Art", @"Self-Regulation"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"LMNO Peas"];
    [book setAuthor:@"Keith Bakers"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"lmno.jpg"]];
    book.tags = [@[@"Letter recogonition"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"One"];
    [book setAuthor:@"Kathryn Otoshi"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"one.jpg"]];
    book.tags = [@[@"Pro-Social Relationship with Peers"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Rosie Revere, Engineer"];
    [book setAuthor:@"Andrea Besty"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"rosie.jpg"]];
    book.tags = [@[@"The Design World", @"Technology and engineering design"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"The Sleepy Little Alphabet: A Bedtime Story from Alphabet Town"];
    [book setAuthor:@"Judy Sierra"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"sleepy.jpg"]];
    book.tags = [@[@"Letters", @"family", @"self regulation", @"self concept"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Train"];
    [book setAuthor:@"Elisha Cooper "];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"train.jpg"]];
    book.tags = [@[@"transit"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Up, Down, and Around"];
    [book setAuthor:@"Kathyern Ayers"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"updown.jpg"]];
    book.tags = [@[@"science", @"gardening", @"pa one book"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Whose Shoes?: A Shoe for Every Job"];
    [book setAuthor:@"Stephen R. Swinburne"];
    [book setBookDescription:@""];
    [book setPicture:[UIImage imageNamed:@"whoseshoes.jpg"]];
    book.tags = [@[@"pa one book",@"shoes", @"careers", @"social studies thinking"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
}


@end
