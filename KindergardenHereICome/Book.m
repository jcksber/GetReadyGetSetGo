//
//  Book.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "Book.h"
#import <Social/Social.h>
#import "ApplicationState.h"

@implementation Book

-(id)init
{
    self = [super init];
    if (self) {
        _title = @"";
        _author = @"";
        _bookDescription = @"";
        _picture = nil;
        _userPicture = nil;
        _tags = [[NSMutableArray alloc] init];
        _childHasRead = NO;
        
    }
    
    return self;
}

-(void)shareOnFacebookFromViewController:(UIViewController *)controller
{
    NSLog(@"Share Book on Facebook");
    
    BOOL isFacebookAvailable = [SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook];
    
    if (isFacebookAvailable) {
        NSLog(@"Facebook Available");
        SLComposeViewController *compose = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        compose.completionHandler = ^(SLComposeViewControllerResult result) {
            switch(result) {
                    //  This means the user cancelled without sending the Tweet
                case SLComposeViewControllerResultCancelled:
                    NSLog(@"Facebook Canceled!");
                    //Show them an cancel message
                    break;
                    //  This means the user hit 'Send'
                case SLComposeViewControllerResultDone:
                    NSLog(@"Facebook Success!");
                    //Show them an update message
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Facebook updated" message:@"Message was posted on Facebook" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
                    [alert show];
                    break;
            }
            
        };
        
        NSString *message = [NSString stringWithFormat:@"%@ and I just read \"%@\" together!\n\n", [ApplicationState getInstance].currentKid.name, self.title];
        [compose setInitialText:message];
        [compose addURL:[NSURL URLWithString:@"http://bit.ly/2V6CFi"]];
        [compose addImage:self.picture];
        
        [controller presentViewController:compose animated:YES completion:nil];
    }
    else{
        NSLog(@"Facebook IS NOT Available");
    }
}

-(void)shareOnTwitterFromViewController:(UIViewController *)controller
{
    NSLog(@"Share Book on Twitter");
    
    BOOL isTwitterAvailable = [SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter];
    
    if (isTwitterAvailable) {
        NSLog(@"Twitter Available");
        SLComposeViewController *compose = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        compose.completionHandler = ^(SLComposeViewControllerResult result) {
            switch(result) {
                    //  This means the user cancelled without sending the Tweet
                case SLComposeViewControllerResultCancelled:
                    NSLog(@"Twitter Canceled!");
                    //Show them an cancel message
                    break;
                    //  This means the user hit 'Send'
                case SLComposeViewControllerResultDone:
                    NSLog(@"Twitter Success!");
                    //Show them an update message
                    break;
            }
            
        };
        
        NSString *message = [NSString stringWithFormat:@"%@ and I just read \"%@\" together!\n\n", [ApplicationState getInstance].currentKid.name, self.title];
        [compose setInitialText:message];
        [compose addURL:[NSURL URLWithString:@"http://bit.ly/2V6CFi"]];
        [compose addImage:self.picture];
        
        [controller presentViewController:compose animated:YES completion:nil];
    }
    else{
        NSLog(@"Twitter IS NOT Available");
    }
}

@end
