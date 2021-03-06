//
//  BookListViewController.m
//  KindergardenHereICome
//
//  Created by Chris Allwein on 11/15/13.
//  Copyright (c) 2013 PAEYC. All rights reserved.
//

#import "BookListViewController.h"
#import "ApplicationState.h"
#import "Book.h"
#import "BookCell.h"
#import "BookInfoViewController.h"

@interface BookListViewController ()
@property (nonatomic,strong) NSArray *books;
@end

@implementation BookListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        [self.tableView registerClass:[BookCell class] forCellReuseIdentifier:@"BookCell"];
        
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
    NSPredicate *p;
    if (self.showReadBooks) {
  p  =[NSPredicate predicateWithFormat:@"childHasRead = YES "];
    }
    else{
        p    =[NSPredicate predicateWithFormat:@"childHasRead = NO OR childHasRead = NIL"];
    }

    _books = [[ApplicationState getInstance].currentKid.books filteredArrayUsingPredicate:p];
    [self.tableView reloadData];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ _books count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BookCell";
    BookCell *cell = (BookCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Book *book = [_books objectAtIndex:indexPath.row   ];
    
    cell.titleLabel.text = book.title;
    cell.authorLabel.text = book.author;
    cell.bookImageView.image = book.picture;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Book *book =[_books objectAtIndex:indexPath.row   ];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    BookInfoViewController * vc = (BookInfoViewController *)[sb instantiateViewControllerWithIdentifier:@"Book"];
    vc.book = book;
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
