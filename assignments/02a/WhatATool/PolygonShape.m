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

- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max {
  self = [super init];
  if (self != nil) {
    [self setMinimumNumberOfSides:min];
    [self setMaximumNumberOfSides:max];
    [self setNumberOfSides:sides];
  }
  return self;
}

// between minimum and maximum
- (void) setNumberOfSides: (int) newNumber {
	if ((newNumber > maximumNumberOfSides) || (newNumber < minimumNumberOfSides)) {
		NSLog(@"Invalid NUMBER of sides: '%d' is must be between '%d' and '%d'", newNumber, minimumNumberOfSides, maximumNumberOfSides);
	} else {
		numberOfSides = newNumber;
	}
}

// greater than 2
- (void) setMinimumNumberOfSides: (int) newNumber {  
	if (newNumber < 2) {
		NSLog(@"Invalid MINIMUM number of sides: '%d' is less than the lower '2'", newNumber);
	} else {
		minimumNumberOfSides = newNumber;
	}
}

// less than or equal to 12
- (void) setMaximumNumberOfSides: (int) newNumber {	
  if (newNumber > 12) {
		NSLog(@"Invalid MAXIMUM number of sides: '%d' is greater than the upper '12'", newNumber);
	} else {
		maximumNumberOfSides = newNumber;
	}
}

@end
