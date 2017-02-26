//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 26.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Question.h"

@interface QuestionTests : XCTestCase {
    Question *question;
}

@end

@implementation QuestionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    question        = [[Question alloc] init];
    question.date   = [NSDate distantPast];
    question.title  = @"Do iPhones also dream of electric sheep?";
    question.score  = 42;
}

- (void)tearDown {
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    question = nil;
    
    [super tearDown];
}

- (void)testThatQuestionHasADate {
    
    // given
    NSDate      *testDate = [NSDate distantPast];
    
    // when
    question.date = testDate;
    
    // then
    XCTAssertEqualObjects(question.date, testDate,
                           @"Question needs to provide it's date!");
}

- (void)testThatQuestionKeppScore {
    
    // then
    XCTAssertEqual(question.score, 42,
                   @"Question need a numeric score!");
}

- (void)testThatQuestionHasATitle {
    
    // then
    XCTAssertEqualObjects(question.title, @"Do iPhones also dream of electric sheep?",
                          @"Question should know it's title!");
}

@end
