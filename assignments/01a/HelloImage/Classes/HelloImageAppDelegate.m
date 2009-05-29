//
//  HelloImageAppDelegate.m
//  HelloImage
//
//  Created by Russell Jones on 5/29/09.
//  Copyright CodeOfficer.com 2009. All rights reserved.
//

#import "HelloImageAppDelegate.h"

@implementation HelloImageAppDelegate

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
