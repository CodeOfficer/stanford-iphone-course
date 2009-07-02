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


- (id) init {
  self = [super init];
  if (self != nil) {
  }
  return [self initWithNumberOfSides: 5 minimumNumberOfSides: 3 maximumNumberOfSides: 10];
}


- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max {
  self = [super init];
  if (self != nil) {
    [self setMinimumNumberOfSides:min];
    [self setMaximumNumberOfSides:max];
    [self setNumberOfSides:sides];
  }
  return self;
}


- (float) angleInDegrees {
  return 180.0 * (numberOfSides-2) / numberOfSides;
}


- (float) angleInRadians {
    return [self angleInDegrees] * (M_PI / 180.0);
}


- (NSString *) name {
  switch (numberOfSides) {
    case 3:
      return @"Triangle";
      break;
    case 4:
      return @"Quadrilateral";
      break;
    case 5:
      return @"Pentagon";
      break;
    case 6:
      return @"Hexagon";
      break;
    case 7:
      return @"Septagon";
      break;
    case 8:
      return @"Octagon";
      break;
    case 9:
      return @"Nonagon";
      break;
    case 10:
      return @"Decagon";
      break;
    case 11:
      return @"Hendecagon";
      break;
    case 12:
      return @"Dodecagon";
      break;
    default:
      return @"INVALID NAME";
      break;
  }
}


- (NSString *) description {
  return [NSString stringWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %f degrees (%f radians)", 
          numberOfSides, [self name], [self angleInDegrees], [self angleInRadians]];
}


- (void) setNumberOfSides: (int) newNumber {
	if ((newNumber > maximumNumberOfSides) || (newNumber < minimumNumberOfSides)) {
		NSLog(@"Invalid NUMBER of sides: '%d' is must be between '%d' and '%d'", newNumber, minimumNumberOfSides, maximumNumberOfSides);
	} else {
		numberOfSides = newNumber;
	}
}


- (void) setMinimumNumberOfSides: (int) newNumber {  
	if (newNumber < 2) {
		NSLog(@"Invalid MINIMUM number of sides: '%d' is less than the lower '2'", newNumber);
	} else {
		minimumNumberOfSides = newNumber;
	}
}


- (void) setMaximumNumberOfSides: (int) newNumber {	
  if (newNumber > 12) {
		NSLog(@"Invalid MAXIMUM number of sides: '%d' is greater than the upper '12'", newNumber);
	} else {
		maximumNumberOfSides = newNumber;
	}
}

- (void) dealloc {
  NSLog(@"Deallocating your ass!");
  [super dealloc];
}



@end
