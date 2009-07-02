#import "Controller.h"

@implementation Controller


- (IBAction)decrease {
  NSLog(@"decrease was clicked!");
  polygon.numberOfSides -= 1;
  [self updateInterface]; 
}


- (IBAction)increase {
  NSLog(@"increase was clicked!");
  polygon.numberOfSides += 1;
  [self updateInterface]; 
}


- (void)awakeFromNib {
  polygon = [[PolygonShape alloc] initWithNumberOfSides:numberOfSidesLabel.text.integerValue minimumNumberOfSides:3 maximumNumberOfSides:12];
  [self updateInterface]; 
}


- (void)updateInterface {
  if ([polygon numberOfSides] == [polygon minimumNumberOfSides]) {
    decreaseButton.enabled = NO;
  } else  {
    decreaseButton.enabled = YES;
  }
  
  if ([polygon numberOfSides] == [polygon maximumNumberOfSides]) {
    increaseButton.enabled = NO;
  } else  {
    increaseButton.enabled = YES;
  }
  
  numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", [polygon numberOfSides]];
}


@end
