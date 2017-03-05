//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 20.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Topic.h"
#import "Question.h"

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

- (void)testForInitiallyEmptyQuestionList {
    
    // then
    XCTAssertEqual([[topic recentQuestions] count], (NSInteger)0,
                   @"No qestions added yet, count should be zero!");
}

- (void)testAddingQuestionToTheList {
    
    // given
    Question *question = [[Question alloc] init];
    
    // when
    [topic addQuestion: question];
    
    // then
    XCTAssertEqual([[topic recentQuestions] count], (NSInteger)1,
                   @"Add a question, and conunt of questions should go up!");
}

- (void)testQuestionsAreListedChronologically {
    
    // given
    Question *questionOne   = [[Question alloc] init];
    questionOne.date        = [NSDate distantPast];
    
    Question *questionTwo   = [[Question alloc] init];
    questionTwo.date        = [NSDate distantFuture];
    
    // when
    [topic addQuestion:questionOne];
    [topic addQuestion:questionTwo];
    
    NSArray *questions      = [topic recentQuestions];
    Question *listedFirst   = [questions objectAtIndex:0];
    Question *listedSecond  = [questions objectAtIndex:1];
    
    // then
    XCTAssertEqualObjects([listedFirst.date laterDate:listedSecond.date], listedFirst.date,
                          @"The later question should appear first in the list!");
    
}

- (void)testLimitOfTwentyQuestions {
    
    // given
    Question *question = [[Question alloc] init];
    
    // when
    for (NSInteger conunter = 0; conunter < 25; conunter++) {
        [topic addQuestion:question];
    }
    
    // then
    XCTAssertTrue([[topic recentQuestions] count] < 21,
                  @"There should be never more than twenty questions!");
}

@end
