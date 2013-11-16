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
    [book setBookDescription:@"Doug is a robot. His parents want him to be smart, so each morning they plug him in and start the information download. After a morning spent learning facts about the city, Doug suspects he could learn even more about the city by going outside and exploring it. And so Doug...unplugs. What follows is an exciting day of adventure and discovery. Doug learns amazing things by doing and seeing and touching and listening - and above all, by interacting with a new friend."];
    [book setPicture:[UIImage imageNamed:@"doug.jpg"]];
    book.tags = [@[@"Information, communication and technology literacy"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];

    book = [[Book alloc] init];
    [book setTitle:@"Follow the Line to School"];
    [book setAuthor:@"Laura Ljungkvist"];
    [book setBookDescription:@"Follow the line from the science corner to the library, from recess to show-and-tell. This new Follow the Line book-illustrated in Laura Ljungkvist's signature line style-takes children on a colorful, comforting, and altogether fun romp through the school day. "];
    [book setPicture:[UIImage imageNamed:@"follow.jpg"]];
    book.tags = [@[@"Information, Communication, and Technology literacy", @"Interactions between people and ther environment"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"How Many Jelly Beans? "];
    [book setAuthor:@"Andrea Menotti"];
    [book setBookDescription:@"How many jelly beans are enough? How many are too many? Aiden and Emma can't decide. Is 10 enough? How about 1,000? That's a lot of jelly beans. But eaten over a whole year, it's only two or three a day. This giant picture book offers kids a fun and easy way to understand large numbers. Starting with 10, each page shows more and more colorful candies, leading up to a big surprise—ONE MILLION JELLY BEANS! With bright illustrations, How Many Jelly Beans? makes learning about big numbers absolutely scrumptious!"];
    [book setPicture:[UIImage imageNamed:@"howmany.jpg"]];
    book.tags = [@[@"Numbers", @"Number values", @"Pro-social relationship with peers"] mutableCopy];
    book.childHasRead = YES;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"I Ain't Gonna Paint No More!"];
    [book setAuthor:@"Karen Beaumont"];
    [book setBookDescription:@"A dab of blue here, a splash of red there, a goopy smear of green . . . everywhere. To the tune of \"It Ain't Gonna Rain No More,\" one creative kid floods his world with color, painting first the walls, then the ceiling, then HIMSELF! Before this feisty artist is through, he'll have painted his head, back, hands, legs, feet, and . . . Oh no--here comes Mama!  Karen Beaumont's zippy text and David Catrow's zany illustrations turn an infamous childhood activity into raucous storytime fun, giving a silly twist to the fine art of self-expression."];
    [book setPicture:[UIImage imageNamed:@"iaint.jpg"]];
    book.tags = [@[@"Art", @"Self-Regulation"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"LMNO Peas"];
    [book setAuthor:@"Keith Bakers"];
    [book setBookDescription:@"Get ready to roll through the alphabet with a jaunty cast of busy little peas. Featuring a range of zippy characters from Acrobat Peas to Zoologist Peas, this delightful picture book highlights a variety of interests, hobbies, and careers—each one themed to a letter of the alphabet—and gives a wonderful sense of the colorful world we live in. Children will have so much fun poring over the detailed scenes that they won’t even realize they’re learning the alphabet along the way!"];
    [book setPicture:[UIImage imageNamed:@"lmno.jpg"]];
    book.tags = [@[@"Letter recogonition"] mutableCopy];
    book.childHasRead = YES;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"One"];
    [book setAuthor:@"Kathryn Otoshi"];
    [book setBookDescription:@"Blue is a quiet color. Red’s a hothead who likes to pick on Blue. Yellow, Orange, Green, and Purple don’t like what they see, but what can they do? When no one speaks up, things get out of hand — until One comes along and shows all the colors how to stand up, stand together, and count. As budding young readers learn about numbers, counting, and primary and secondary colors, they also learn about accepting each other's differences and how it sometimes just takes one voice to make everyone count."];
    [book setPicture:[UIImage imageNamed:@"one.jpg"]];
    book.tags = [@[@"Pro-Social Relationship with Peers"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Rosie Revere, Engineer"];
    [book setAuthor:@"Andrea Besty"];
    [book setBookDescription:@"Rosie may seem quiet during the day, but at night she’s a brilliant inventor of gizmos and gadgets who dreams of becoming a great engineer. When her great-great-aunt Rose (Rosie the Riveter) comes for a visit and mentions her one unfinished goal—to fly—Rosie sets to work building a contraption to make her aunt’s dream come true. But when her contraption doesn’t fly but rather hovers for a moment and then crashes, Rosie deems the invention a failure. On the contrary, Aunt Rose insists that Rosie’s contraption was a raging success: you can only truly fail, she explains, if you quit. From the powerhouse author-illustrator team of Iggy Peck, Architect comes Rosie Revere, Engineer, another charming, witty picture book about believing in yourself and pursuing your passion"];
    [book setPicture:[UIImage imageNamed:@"rosie.jpg"]];
    book.tags = [@[@"The Design World", @"Technology and engineering design"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"The Sleepy Little Alphabet: A Bedtime Story from Alphabet Town"];
    [book setAuthor:@"Judy Sierra"];
    [book setBookDescription:@"It's sleepy time in Alphabet Town. But the twenty-six little letters of the alphabet all have something they need—or want—to do before big-letter moms and dads tuck them in. Not since the classic Chicka Chicka Boom Boom has there been such an appealing way to teach the youngest child the ABCs while providing a one-minute goodnight story. Of course, Melissa Sweet’s animated watercolor, pencil, and collage illustrations may beg for a little more time to match up all the toys with the right letters, and Judy Sierra’ s rollicking rhymed story will want to be heard again and again. Okay, so maybe it’ s a three-minute story!"];
    [book setPicture:[UIImage imageNamed:@"sleepy.jpg"]];
    book.tags = [@[@"Letters", @"family", @"self regulation", @"self concept"] mutableCopy];
    book.childHasRead = YES;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Train"];
    [book setAuthor:@"Elisha Cooper "];
    [book setBookDescription:@"A night train, a freight train, a high-speed train. Racing across the country, from coast to coast. All aboard!  Climb aboard a red-striped Commuter Train in the East. Switch to a blue Passenger Train rolling through midwestern farmland. Then hop on a Freight Train, soar over mountains on an Overnight Train, and finish on a High-Speed Train as it races to the West Coast. Trains are moving. Fast and loud, colorful and powerful. Experience their sights, sounds, smells--and the engineers and conductors who make them go--as they roll across the country."];
    [book setPicture:[UIImage imageNamed:@"train.jpg"]];
    book.tags = [@[@"transit"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Up, Down, and Around"];
    [book setAuthor:@"Kathyern Ayers"];
    [book setBookDescription:@"From seeds dropping into soil to corn bursting from its stalks, from children chasing butterflies to ants burrowing underground, everything in this vibrant picture book pulses with life —- in all directions! Sprightly illustrations set the mood for a rhythmic text that follows nature’s course to a feast of backyard bounty."];
    [book setPicture:[UIImage imageNamed:@"updown.jpg"]];
    book.tags = [@[@"science", @"gardening", @"pa one book"] mutableCopy];
    book.childHasRead = NO;
    [self.currentKid.books addObject:book];
    
    book = [[Book alloc] init];
    [book setTitle:@"Whose Shoes?: A Shoe for Every Job"];
    [book setAuthor:@"Stephen R. Swinburne"];
    [book setBookDescription:@"What do you want to be when you grow up? People work in various jobs. Very often, clothes fit the job. The right shoes, for example, can make a job easier or safer. A nurse wouldn't wear construction boots, and a construction worker wouldn't wear ballet slippers. There is the right shoe for every job. Steve Swinburne explores various occupations through a simple, lively text and bright, colorful photographs. The book includes a guessing game that invites young readers to guess which shoe matches which job. This Library Media Connection Editor's Choice book offers a unique way of asking children what they want to be when they grow up."];
    [book setPicture:[UIImage imageNamed:@"whoseshoes.jpg"]];
    book.tags = [@[@"pa one book",@"shoes", @"careers", @"social studies thinking"] mutableCopy];
    book.childHasRead = YES;
    [self.currentKid.books addObject:book];
    
}


@end
