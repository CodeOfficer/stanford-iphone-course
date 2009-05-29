#import "Controller.h"

@implementation Controller
- (IBAction)sliderChanged:(id)sender {
  label.text = [NSString stringWithFormat:@"%.1f", slider.value ];
}
@end
