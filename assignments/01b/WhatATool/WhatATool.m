#import <Foundation/Foundation.h>


void PrintPathInfo() {
  NSString *path = @"~";
  NSLog(@"My home folder is at '%@'", [path stringByExpandingTildeInPath]);
  // NSArray *pathComponents = [path pathComponents];
  // NSLog([pathComponents description]);
  // NSLog([path stringByExpandingTildeInPath]);
}

void PrintProcessInfo() {
  
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
