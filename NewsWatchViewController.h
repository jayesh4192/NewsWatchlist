//
//  NewsWatchViewController.h
//  NewsWatchList
//
//  Created by Jayesh Shah on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewsWatchViewController : UIViewController <UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UISearchBar *mySearchBar;
@property (nonatomic, strong) IBOutlet UITableView *myTableView;


@end
