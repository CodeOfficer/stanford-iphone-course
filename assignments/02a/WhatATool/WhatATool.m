#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void PrintPathInfo() {
	NSString *path = @"~";
	NSString *full_path = [path stringByExpandingTildeInPath];
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

		NSLog(@".............................");
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
	PolygonShape *poly = [[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:2 maximumNumberOfSides:12];
	NSLog(@"PolygonShape's minimumNumberOfSides is: '%d'", [poly minimumNumberOfSides]);
	NSLog(@"PolygonShape's maximumNumberOfSides is: '%d'", [poly maximumNumberOfSides]);
	NSLog(@"PolygonShape's numberOfSides is: '%d'", [poly numberOfSides]);
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








