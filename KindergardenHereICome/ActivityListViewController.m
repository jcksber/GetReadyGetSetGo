//
//  ActivityListViewController.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityListViewController.h"
#import "ApplicationState.h"
#import "ActivityCell.h"

@interface ActivityListViewController ()

@property NSArray *activities;

@end

@implementation ActivityListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        [self.tableView registerClass:[ActivityCell class] forCellReuseIdentifier:@"ActivityCell"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    if ( _tag != nil ) {
        _activities = [[[ApplicationState getInstance] activityListManager] activitiesWithTag:_tag];
        NSLog(@"Tagged list - %@ - %@", _tag, _activities.debugDescription);
    } else {
        _activities = [[[ApplicationState getInstance] activityListManager] activities];
        NSLog(@"Full list");
    }
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_activities count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ActivityCell";
    ActivityCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Activity *activity = [_activities objectAtIndex:indexPath.row];
    cell.titleLabel.text = activity.title;
    // TODO:
    //cell.activityImageView setImage:[]
    
    return cell;
}

@end
