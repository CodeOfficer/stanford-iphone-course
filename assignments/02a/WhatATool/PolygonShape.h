//
//  PolygonShape.h
//  WhatATool
//
//  Created by Russell Jones on 6/1/09.
//  Copyright 2009 CodeOfficer.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PolygonShape : NSObject {
	
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
	float angleInDegrees;
	float angleInRadians;
	NSString *name;
	
}

@property(readwrite, assign) int numberOfSides;
@property(readwrite, assign) int minimumNumberOfSides;
@property(readwrite, assign) int maximumNumberOfSides;
@property(readonly, assign) float angleInDegrees;
@property(readonly, assign) float angleInRadians;
@property(readonly, assign) NSString *name;

//- (int) numberOfSides;

- (void) setNumberOfSides: (int) newNumber;


@end

//  numberOfSides – an int value 
//  minimumNumberOfSides – an int value 
//•  maximumNumberOfSides –an int value 
//•  angleInDegrees –a float value, readonly 
//  angleInRadians – a float value, readonly 
//  name – an NSString object, readonly 
