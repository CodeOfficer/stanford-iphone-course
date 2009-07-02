#import <Foundation/Foundation.h>
#import "PolygonShape.h"


void PrintPathInfo() {
  NSLog(@".............................");
	NSString *path = @"~";
	NSString *full_path = [path stringByExpandingTildeInPath];
	NSLog(@"My home folder is at '%@'", full_path);
	for (NSString *component in [full_path pathComponents]) {
		NSLog(component);
	}
}


void PrintProcessInfo() {
  NSLog(@".............................");
	NSString *processName = [[NSProcessInfo processInfo] processName];
	int processIdentifier = [[NSProcessInfo processInfo] processIdentifier];
	NSLog(@"Process Name: '%@' Process ID: '%d'", processName, processIdentifier);
}


void PrintBookmarkInfo() {
  NSLog(@".............................");
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

	NSURL *url1 = [NSURL URLWithString:@"http://www.stanford.edu"];
	NSURL *url2 = [NSURL URLWithString:@"http://www.apple.com"];
	NSURL *url3 = [NSURL URLWithString:@"http://cs193p.stanford.edu"];
	NSURL *url4 = [NSURL URLWithString:@"http://itunes.stanford.edu"];
	NSURL *url5 = [NSURL URLWithString:@"http://stanfordshop.com"];

	NSString  *name1 = @"Stanford University";
	NSString  *name2 = @"Apple";
	NSString  *name3 = @"CS193P";
	NSString  *name4 = @"Stanford on iTunes U";
	NSString  *name5 = @"Stanford Mall";

	[dictionary setObject:url1 forKey:name1];
	[dictionary setObject:url2 forKey:name2];
	[dictionary setObject:url3 forKey:name3];
	[dictionary setObject:url4 forKey:name4];
	[dictionary setObject:url5 forKey:name5];

	NSLog(@"enumeration 1 ----------------");

	for (id key in dictionary) {
		if ([key hasPrefix:@"Stanford"]) {
			NSLog(@"Key: '%@' URL: '%@'", key, [dictionary objectForKey:key]);
		}
	}  

	NSLog(@"enumeration 2 ----------------");

	NSEnumerator *enumerator = [dictionary keyEnumerator];
	id object;

	while ((object = [enumerator nextObject])) {
		if ([object hasPrefix:@"Stanford"]) {
			NSLog(@"Key: '%@' URL: '%@'", object, [dictionary objectForKey:object]);
		}
	}
}


void PrintIntrospectionInfo() {
	NSString *string1 = @"A Web Developer From Maine";
	NSMutableString *string2 = @"No Really!";
	NSMutableString *string3 = @"Ya, Really!";
	NSURL *url = [NSURL URLWithString:@"http://www.codeofficer.com"];
	NSProcessInfo *process = [NSProcessInfo processInfo];
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

	NSMutableArray *marray = [NSMutableArray arrayWithObjects: string1, string2, string3, url, process, dictionary, nil];

	BOOL isMember;
	BOOL isKind;
	BOOL respondsToLowercaseString;
	SEL selector = @selector(lowercaseString);

	for	(id object in marray) {
		isMember = [object isMemberOfClass:[NSString class]] ? YES : NO;
		isKind = [object isKindOfClass:[NSString class]] ? YES : NO;
		respondsToLowercaseString = [object respondsToSelector:selector] ? YES : NO;

		NSLog(@"Class Name: '%@'", [object className]);
		NSLog(@"Is Member of NSString: %@", (isMember ? @"YES" : @"NO"));
		NSLog(@"Is Kind of NSString: %@", (isKind ? @"YES" : @"NO"));
		NSLog(@"Responds to lowercaseString: '%@'", (respondsToLowercaseString ? @"YES" : @"NO"));
		
		if (respondsToLowercaseString) {
			NSLog(@"lowercaseString is: %@", [object performSelector:selector]);
		}
	}
}


void PrintPolygonInfo() {
  NSLog(@".............................");
  NSMutableArray *polys = [[NSMutableArray alloc] init];
  
  [polys addObject:[[[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7] autorelease]];
  [polys addObject:[[[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9] autorelease]];
  [polys addObject:[[[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12] autorelease]];
  
  for (PolygonShape *poly in polys) {
    NSLog([poly description]);
  }
  [polys release];
  
  
//  NSLog(@".............................");
//	PolygonShape *poly1 = [[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:2 maximumNumberOfSides:12];
//	NSLog(@"PolygonShape's minimumNumberOfSides is: '%d'", [poly1 minimumNumberOfSides]);
//	NSLog(@"PolygonShape's maximumNumberOfSides is: '%d'", [poly1 maximumNumberOfSides]);
//	NSLog(@"PolygonShape's numberOfSides is: '%d'", [poly1 numberOfSides]);
//	NSLog(@"PolygonShape's angleInDegrees is: '%f'", [poly1 angleInDegrees]);
//	NSLog(@"PolygonShape's angleInRadians is: '%f'", [poly1 angleInRadians]);
//	NSLog(@"PolygonShape's name is: '%@'", [poly1 name]);
//	NSLog(@"PolygonShape's polyDescription is: '%@'", [poly1 description]);
//	NSLog(@"PolygonShape's retainCount is: '%d'", [poly1 retainCount]);
//  [poly1 release];
//  NSLog(@".............................");
//	PolygonShape *poly2 = [[PolygonShape alloc] init];
//	NSLog(@"PolygonShape's minimumNumberOfSides is: '%d'", [poly2 minimumNumberOfSides]);
//	NSLog(@"PolygonShape's maximumNumberOfSides is: '%d'", [poly2 maximumNumberOfSides]);
//	NSLog(@"PolygonShape's numberOfSides is: '%d'", [poly2 numberOfSides]);
//	NSLog(@"PolygonShape's angleInDegrees is: '%f'", [poly2 angleInDegrees]);
//	NSLog(@"PolygonShape's angleInRadians is: '%f'", [poly2 angleInRadians]);
//	NSLog(@"PolygonShape's name is: '%@'", [poly2 name]);
//	NSLog(@"PolygonShape's polyDescription is: '%@'", [poly2 description]);
//  [poly2 release];
}


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
    PrintPathInfo();            // Section 1
    PrintProcessInfo();         // Section 2
    PrintBookmarkInfo();        // Section 3
    PrintIntrospectionInfo();   // Section 4
    PrintPolygonInfo();         // Section 6 (No function for section 5) 

    [pool release];
    return 0;
}








