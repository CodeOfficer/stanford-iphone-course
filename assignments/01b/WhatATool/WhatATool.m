#import <Foundation/Foundation.h>


void PrintPathInfo() {
	NSString *path				= @"~";
	NSString *full_path			= [path stringByExpandingTildeInPath];
	NSLog(@"My home folder is at '%@'", full_path);
	for (NSString *component in [full_path pathComponents]) {
		NSLog(component);
	}
}

void PrintProcessInfo() {
  NSString *processName = [[NSProcessInfo processInfo] processName];
  int processIdentifier = [[NSProcessInfo processInfo] processIdentifier];
  NSLog(@"Process Name: '%@' Process ID: '%d'", processName, processIdentifier);
}

void PrintBookmarkInfo() {
  
}

void PrintIntrospectionInfo() {
  
}



int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
    PrintPathInfo();            // Section 1
    PrintProcessInfo();         // Section 2
    PrintBookmarkInfo();        // Section 3
    PrintIntrospectionInfo();   // Section 4

    [pool release];
    return 0;
}
