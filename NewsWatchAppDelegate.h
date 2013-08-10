//
//  NewsWatchAppDelegate.h
//  NewsWatchList
//
//  Created by Jayesh Shah on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jayeshs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsWatchAppDelegate : UIResponder <UIApplicationDelegate> {
    
    UINavigationController *nav;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *nav;

@end
