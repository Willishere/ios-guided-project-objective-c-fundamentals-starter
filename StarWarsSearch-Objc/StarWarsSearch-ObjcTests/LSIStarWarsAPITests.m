//
//  LSIStarWarsAPITests.m
//  StarWarsSearch-ObjcTests
//
//  Created by Paul Solt on 11/5/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIFileHelper.h"
@interface LSIStarWarsAPITests : XCTestCase

@end

@implementation LSIStarWarsAPITests

- (void)testParsePersonJSON {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSDate *data = loadFile(@"Person.json", bundle);
    XCTAssertNotNil(data);
    
    NSError *error = nil;
    //Bitmask = flags in C/Objective-C
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData: data options:0 error: &error];
    
    if (error) {
        printf("Error: %s", error.description.UTF8String);
        XCTFail(@"Error: %@", error);
    }
    
    NSLog(@"PERSON: %@", json);
	// Create an API query and verify results
}


@end
