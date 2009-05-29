//
//  SliderTestAppDelegate.m
//  SliderTest
//
//  Created by Russell Jones on 5/29/09.
//  Copyright CodeOfficer.com 2009. All rights reserved.
//

#import "SliderTestAppDelegate.h"

@implementation SliderTestAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
