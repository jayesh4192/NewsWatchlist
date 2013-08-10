//
//  EventListViewController.h
//  NewsWatchList
//
//  Created by Jayesh Shah on 8/2/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventListViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *eventTableView;

@end
