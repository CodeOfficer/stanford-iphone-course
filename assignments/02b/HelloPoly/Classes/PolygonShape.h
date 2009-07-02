//
//  PolygonShape.h
//  WhatATool
//
//  Created by Russell Jones on 6/1/09.
//  Copyright 2009 CodeOfficer.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
	float angleInDegrees;
	float angleInRadians;
	NSString *name;
	
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property(readonly) float angleInDegrees;
@property(readonly) float angleInRadians;
@property(readonly) NSString *name;

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;

@end

