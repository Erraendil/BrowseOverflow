//
//  Person.h
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 28.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSString   *name;
@property (readonly) NSURL      *avatarURL;

- (id)initWithName:(NSString *)name avatarLocation:(NSString *)location;

@end
