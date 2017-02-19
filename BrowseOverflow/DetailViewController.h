//
//  DetailViewController.h
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 19.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

