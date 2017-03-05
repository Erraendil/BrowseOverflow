//
//  Topic.m
//  BrowseOverflow
//
//  Created by Kostyantyn Bilyk on 20.02.17.
//  Copyright © 2017 Kostyantyn Bilyk. All rights reserved.
//

#import "Topic.h"

@implementation Topic {
    NSArray *questions;
}

@synthesize name, tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag {
    if (self = [super init]) {
        name        = [newName copy];
        tag         = [newTag copy];
        questions   = [[NSArray alloc] init];
    }
    
    return self;
}

- (NSArray *)recentQuestions {
    
    return [self sortQuestionsLatestFirst:questions];
}

- (void)addQuestion:(Question *)question {
    
    NSArray *newQuestions = [questions arrayByAddingObject:question];
    
    if ([newQuestions count] > 20) {
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    
    questions = newQuestions;
}

- (NSArray *)sortQuestionsLatestFirst:(NSArray *)questionList {
 
    return [questions sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        Question *questionOne = (Question *)obj1;
        Question *questionTwo = (Question *)obj2;
        
        return [questionTwo.date compare:questionOne.date];
    }];
}

@end
