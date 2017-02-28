//
//  PersonTests.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 28.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase {
    Person *person;
}

@end

@implementation PersonTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
 
    person = [[Person alloc] initWithName:@"Graham Lee"
                           avatarLocation:@"http://example.com/avatar.png"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    person = nil;
    
    [super tearDown];
}

- (void)testThatPersonHasTheRightName {
    
    // then
    XCTAssertEqualObjects(person.name, @"Graham Lee",
                          @"Expecting a person to provide its name!");
}

- (void)testThatPersonHasAnAvatarURL {
    
    // given
    NSURL *url = person.avatarURL;
    
    // then
    XCTAssertEqualObjects([url absoluteString], @"http://example.com/avatar.png",
                          @"The Person's avatar should be presented by a URL!");
}

@end
