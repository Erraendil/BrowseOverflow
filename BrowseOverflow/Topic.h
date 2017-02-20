//
//  Topic.h
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 20.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (readonly) NSString *name;
@property (readonly) NSString *tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag;

- (NSArray *)recentQuestions;

@end
