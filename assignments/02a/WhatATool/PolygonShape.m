//
//  PolygonShape.m
//  WhatATool
//
//  Created by Russell Jones on 6/1/09.
//  Copyright 2009 CodeOfficer.com. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;
@synthesize angleInDegrees;
@synthesize angleInRadians;
@synthesize name;

- (void) setNumberOfSides: (int) newNumber {
	if (newNumber > maximumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed", numberOfSides, maximumNumberOfSides);
	} else if (newNumber < minimumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed", numberOfSides, minimumNumberOfSides);
	} else {
		numberOfSides = newNumber;
	}
}

- (void) setMinimumNumberOfSides: (int) newNumber {
	if (newNumber < 2) {
		NSLog(@"Invalid minimum number of sides: %d is less than the allowed minimum of 2", numberOfSides);
	} else if (newNumber > numberOfSides) {
		NSLog(@"Invalid minimum number of sides: %d is greater than the current of %d", numberOfSides, minimumNumberOfSides);
	} else if (newNumber > maximumNumberOfSides) {
		NSLog(@"Invalid minimum number of sides: %d is greater than the maximum of %d allowed", numberOfSides, maximumNumberOfSides);
	} else {
		minimumNumberOfSides = newNumber;
	}
}

@end
