//
//  MasterViewController.h
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 19.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

