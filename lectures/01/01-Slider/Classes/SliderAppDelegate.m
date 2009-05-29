//
//  SliderAppDelegate.m
//  Slider
//

#import "SliderAppDelegate.h"

@implementation SliderAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [window makeKeyAndVisible];
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
