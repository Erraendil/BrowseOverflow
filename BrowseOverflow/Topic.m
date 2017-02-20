//
//  Topic.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 20.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import "Topic.h"

@implementation Topic

@synthesize name, tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag {
    if (self = [super init]) {
        name = [newName copy];
        tag = [newTag copy];
    }
    
    return self;
}

- (NSArray *)recentQuestions {
    return [NSArray array];
}

@end
