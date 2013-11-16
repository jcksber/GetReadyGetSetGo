//
//  ActivityTagListViewController.m
//  KindergardenHereICome
//
//  Created by Kelli Ireland on 2013/11/15.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "ActivityTagListViewController.h"
#import "ApplicationState.h"
#import "ActivityTagCell.h"
#import "ActivityListViewController.h"
#import "Activity.h"

@interface ActivityTagListViewController ()

@property NSArray *tags;

@end

@implementation ActivityTagListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        [self.tableView registerClass:[ActivityTagCell class] forCellReuseIdentifier:@"ActivityTagCell"];
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.parentViewController.navigationItem.title = @"Activity Search";
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    //self.activityTagList.removeAllObjects;
    //self.activityTagList arrayByAddingObjectsFromArray:[ApplicationState getInstance].getAllTags
    _tags = [[[ApplicationState getInstance] activityListManager] allTags];
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
    return [[[[ApplicationState getInstance] activityListManager] allTags] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ActivityTagCell";
    ActivityTagCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.titleLabel.text = [_tags objectAtIndex:indexPath.row];
    // TODO:
    //cell.activityImageView setImage:[]
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *tag =[_tags objectAtIndex:indexPath.row];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    ActivityListViewController *vc = (ActivityListViewController *)[sb instantiateViewControllerWithIdentifier:@"ActivityList"];
    vc.tag = tag;
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end
