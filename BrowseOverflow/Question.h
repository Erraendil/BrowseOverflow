//
//  Question.h
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 26.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (readwrite) NSDate    *date;
@property (readwrite) NSString  *title;
@property (readwrite) NSInteger score;
@end
