//
//  Person.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 28.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name, avatarURL;

- (id)initWithName:(NSString *)aName avatarLocation:(NSString *)location {
    if (self = [super init]) {
        name = [aName copy];
        avatarURL = [[NSURL alloc] initWithString:location];
    }
    
    return self;
}

@end
