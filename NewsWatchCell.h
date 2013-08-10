//
//  NewsWatchCell.h
//  NewsWatchList
//
//  Created by Jayesh Shah on 8/1/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsWatchCell : UITableViewCell
{
    UILabel *searchLabel;
    UIButton *addEvent;
}

@property (nonatomic, strong) IBOutlet UILabel *searchLabel;
@property (nonatomic, strong) IBOutlet UIButton *addEvent;


@end
