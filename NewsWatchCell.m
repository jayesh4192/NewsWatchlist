//
//  NewsWatchCell.m
//  NewsWatchList
//
//  Created by Jayesh Shah on 8/1/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import "NewsWatchCell.h"
#import "NewsWatchAppDelegate.h"
#import "EventListViewController.h"

@implementation NewsWatchCell
@synthesize searchLabel, addEvent;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
