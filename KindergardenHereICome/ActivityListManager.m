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
    // TODO: Sort alphabetically
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
    // TODO: Sort alphabetically
    return taggedActivities;
}

- (void)initializeArray{
    self.activities = [[NSMutableArray alloc] init];
    
    Activity *activity = [[Activity alloc] init];
    activity.title = @"Weather or Not?";
    activity.tags = @[@"Science", @"Self-concept", @"Clothes"];
    activity.icon = [UIImage imageNamed:@("cloud.png")];
    activity.summary = @"What's the weather going to be today? Ask your child what you should wear.";
    activity.learningInfo = @"This activity enables your child to learn about the different seasons and appropriate clothes for the seasons.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Colors";
    activity.tags = @[@"Colors", @"Shapes"];
    activity.icon = [UIImage imageNamed:@("tint.png")];
    activity.summary = @"Ask your child to name the color of different things you see around the house. For instance, \"Can you tell me what color an apple is?\" or \"Can you go find something that is blue?\"";
    activity.learningInfo = @"This activity enables your child to recognize colors in the natural environment.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Shapes";
    activity.tags = @[@"Shapes"];
    activity.icon = [UIImage imageNamed:@("heart.png")];
    activity.summary = @"Ask your child to draw basic shapes: circle, triangle, square. Once they can draw the basic shapes, ask them to point things out that are basic shapes while you're at the store or driving to or home from school.";
    activity.learningInfo = @"These activities enable your child to use fine motor skills to practice drawing and to recognize shapes in the natural environment.";
    [self.activities addObject:activity];
    
    activity = [[Activity alloc] init];
    activity.title = @"Numbers";
    activity.tags = @[@"Numbers", @"Counting"];
    activity.icon = [UIImage imageNamed:@("money.png")];
    activity.summary = @"Ask your child to count to 10 in order, if they can do that ask them to point to ten different objects and count as they go along. Once they finish, keep going and ask them to count to 20 and so on";
    activity.learningInfo = @"This activity illustrates basic number systems and relationships";
    [self.activities addObject:activity];
    
}

    
    /*
    
 	 @[@, ,		Let's Meet	Letters	Writing	Reading	Social Studies	Physical Development	Come Play!
   		self-concepts, health and safety	Do you know your letters?	Can you write your name?	Letter recognition	Do you recognize the area?	Large motor skills	family engagement, field trips, programs
   
	…	Set-up a place to meet near the house in case of an emergency	Ask your child to say the alphabet. Singing is great as well but ask them to say the letters.	Ask your child to write letters that you say to them. If they can correctly write the letter ask them if they can write their name	Can your child recognize the first letter to their first name? Ask them to pronounce the sound that each letter makes.  See list of books in app	While driving home see if your child recognizes certain landmarks. If they can recognize different landmarks see if they can give you a direction to turn.	Ask your child to hop in place or stand on one foot. To advance the activity, asks them to dance to music and freeze when the music stops	Check out the RADical Days calendar for FREE events happening in Allegheny County.
   "-
   
   "	- . 	- 	- 	"- What to do in an emergency.
   - Keeping our family safe"	- Helps build the child's vocabulary.   - Saying letters instead of singing them helps the child recognize them as individual instead of memorizing a song.  	- Illustrates conenction between hearing letters and recognizing them in written form.	- Illustrates reading and analyzing written text.	- Illustrates the concept of history in the real environment.	- Provides child with gross motor movement and physical activity.	"Interactions between people and the environment
   - Physical characteristics of places and regions
   - Pro-relationships with Adults"
   )
*/
     
     
     
@end

