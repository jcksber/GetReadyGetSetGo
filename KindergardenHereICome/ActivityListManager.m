//
//  ActivityListManager.m
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityListManager.h"

@implementation ActivityListManager

+ (ActivityListManager *)getInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (void) initializeData
{
    [self initializeArray];
    [self.activities sortUsingDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES]]];
    self.currentActivity = [self.activities firstObject];
}

- (Activity *)randomActivity
{
    return [self.activities objectAtIndex:(arc4random() % [self.activities count])];
}

- (NSArray *)allTags
{
    NSMutableArray *tags = [[NSMutableArray alloc]init];
    for (Activity *activity in self.activities) {
        for (NSString *tag in activity.tags){
            if ([tags indexOfObject:tag] == NSNotFound ) {
                [tags addObject:tag];
            }
        }
    }
    [tags sortUsingSelector:@selector(compare:)];
    return tags;
}

- (NSArray *)activitiesWithTag:(NSString *)tag
{
    NSMutableArray *taggedActivities = [[NSMutableArray alloc]init];
    for (Activity *activity in self.activities) {
        if ([activity.tags indexOfObject:tag] != NSNotFound) {
            [taggedActivities addObject:activity];
        }
    }
    [taggedActivities sortUsingDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES]]];
    return taggedActivities;
}

- (void)initializeArray{
    self.activities = [[NSMutableArray alloc] init];
    
    Activity *activity = [[Activity alloc] init];
    activity.title = @"Weather or Not?";
    activity.tags = @[@"Science", @"Self-concept", @"Clothes"];
    activity.icon = [UIImage imageNamed:@("cloud-green.png")];
    activity.summary = @"What's the weather going to be today? Ask your child what you should wear.";
    activity.learningInfo = @"This activity enables your child to learn about the different seasons and appropriate clothes for the seasons.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Colors";
    activity.tags = @[@"Colors"];
    activity.icon = [UIImage imageNamed:@("tint.png")];
    activity.summary = @"Ask your child to name the color of different things you see around the house. For instance, \"Can you tell me what color an apple is?\" or \"Can you go find something that is blue?\"";
    activity.learningInfo = @"This activity enables your child to recognize colors in the natural environment.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Drawing is Fun";
    activity.tags = @[@"Shapes"];
    activity.icon = [UIImage imageNamed:@("heart-green.png")];
    activity.summary = @"Ask your child to draw basic shapes: circle, triangle, square. Once they can draw the basic shapes, ask them to point things out that are basic shapes while you're at the store or driving to or home from school.";
    activity.learningInfo = @"These activities enable your child to use fine motor skills to practice drawing and to recognize shapes in the natural environment.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"I Count Too";
    activity.tags = @[@"Numbers", @"Counting"];
    activity.icon = [UIImage imageNamed:@("money.png")];
    activity.summary = @"Ask your child to count to 10 in order, if they can do that ask them to point to ten different objects and count as they go along. Once they finish, keep going and ask them to count to 20 and so on";
    activity.learningInfo = @"This activity illustrates basic number systems and relationships";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Let's meet";
    activity.tags = @[@"Self-concepts", @"Health", @"Safety"];
    activity.icon = [UIImage imageNamed: @("medkit.png")];
    activity.summary = @"Set a place to meet near the house in case of an emergency";
    activity.learningInfo = @"What to do in an emergency, keeping your family safe";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Letters";
    activity.tags = @[@"Language", @"Literacy"];
    activity.icon = [UIImage imageNamed:@("bold-green.png")];
    activity.summary = @"Ask your child to say the alphabet. Singing works too, but ask them to say the letters.";
    activity.learningInfo = @"This activity helps to build the child's vocabulary; saying letters instead of singing them helps the child recognize individual letters instead of memorizing a song.";
    activity.childHasCompleted = YES;
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Writing";
    activity.tags = @[@"Language", @"Literacy"];
    activity.icon = [UIImage imageNamed: @("pencil-green.png")];
    activity.summary = @"Ask your child to write letters that you say to them. If they can correctly write the letter ask them to write their name";
    activity.learningInfo = @"This activity illustrates the connection between hearing letters and recognizing them in written form.";
        activity.childHasCompleted = YES;
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Reading";
    activity.tags = @[@"Language", @"Literacy"];
    activity.icon = [UIImage imageNamed: @("book-green.png")];
    activity.summary = @"Can your child recognize the first letter of their first name? Ask them to pronounce the sound that each letter makes.  See list of books in app.";
    activity.learningInfo = @"This activity illustrates reading and analyzing written text.";
        activity.childHasCompleted = YES;
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"My Neighborhood";
    activity.tags = @[@"Social Studies"];
    activity.icon = [UIImage imageNamed: @("globe-green.png")];
    activity.summary = @"While driving home see if your child recognizes certain landmarks. If they can, ask if they can give you the next direction to turn.";
    activity.learningInfo = @"This activity illustrates the concept of history in the real environment.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Let's Hop";
    activity.tags = @[@"Motor skills"];
    activity.icon = [UIImage imageNamed: @("music-green.png")];
    activity.summary = @"Ask your child to hop in place or stand on one foot. To advance the activity, asks them to dance to music and freeze when the music stops.";
    activity.learningInfo = @"This activity provides your child with gross motor movement and physical activity.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Come Play!";
    activity.tags = @[@"Family", @"Travel"];
    activity.icon = [UIImage imageNamed:@("plane-green.png")];
    activity.summary = @"Check out the RADical Days calendar for FREE events happening in Allegheny County.";
    activity.learningInfo = @"This activity encourages interactions with children and adults in your community. It also aids in identifying the physical characteristics of places and regions.";
    [self.activities addObject:activity];
    
}
     
     
@end

