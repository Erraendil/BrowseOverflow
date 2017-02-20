//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 20.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Topic.h"

@interface TopicTests : XCTestCase {
    Topic *topic;
}

@end

@implementation TopicTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    topic = nil;
    [super tearDown];
}

- (void)testThatTopicExists {
    
    //then
    XCTAssertNotNil(topic,
                    @"Should be able to create a Topic instance!");
}

- (void)testThatTopicCanBeNamed {
    
    //then
    XCTAssertEqualObjects(topic.name, @"iPhone",
                          @"The Topic should have name I gave it!");
}

- (void)testThatTopicHasATag {
    
    //then
    XCTAssertEqualObjects(topic.tag, @"iphone",
                          @"Topics need to have tags!");
}

- (void)testForAListOfQuestions {
    XCTAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]],
                  @"Topics should provide a list of recent questions!");
}

@end
