//
//  NewsWatchViewController.m
//  NewsWatchList
//
//  Created by Jayesh Shah on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import "NewsWatchViewController.h"
#import "NewsWatchCell.h"
#import "NewsWatchAppDelegate.h"

@interface NewsWatchViewController ()

{
    
    NSMutableArray *totalStrings;
    NSMutableArray *filteredStrings;
    BOOL isFiltered;
}
-(IBAction)addEventToEventList:(id)sender;


@end

@implementation NewsWatchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.mySearchBar.delegate = self;
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.myTableView setHidden:YES];
    
    totalStrings = [[NSMutableArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five", @"Six", nil];
    
}

-(void) searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [self.myTableView setHidden:NO];
    if (searchText.length == 0) {
        isFiltered = NO;
    }
    else {
        isFiltered = YES;
        filteredStrings = [[NSMutableArray alloc] init];
        
        for(NSString *str in totalStrings) {
            NSRange stringRange = [str rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (stringRange.location != NSNotFound) {
                [filteredStrings addObject:str];
            }
        }
        
    }
    [self.myTableView reloadData];
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self.myTableView resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//table view delegate and data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (isFiltered) {
        return [filteredStrings count];
    }
    else {
        return [totalStrings count];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *NewsWatchTableIdentifier = @"NewsWatchCell";
    
    NewsWatchCell *cell = [tableView dequeueReusableCellWithIdentifier:NewsWatchTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NewsWatchCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    if (!isFiltered) {
        cell.searchLabel.text = [totalStrings objectAtIndex:indexPath.row];
    }
    else {
        cell.searchLabel.text = [filteredStrings objectAtIndex:indexPath.row];
    }
    [cell.addEvent setTag:indexPath.row];
    [cell.addEvent addTarget:self action:@selector(addEventToEventList:) forControlEvents:UIControlEventTouchUpInside];

    
    return cell;
    
}
     
     
     
-(IBAction)addEventToEventList:(id)sender
{
    int row = [sender tag];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
    //id cell = [UITableView cellForRowAtIndexPath:indexPath];
    //[cell.textField setText:....];
    
    NSLog(@"Hello");
}
@end
