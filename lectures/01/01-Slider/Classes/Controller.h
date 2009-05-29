//
//  SliderAppDelegate.h
//  Slider
//

#import <UIKit/UIKit.h>

@interface Controller : NSObject {
    IBOutlet UILabel *label;
    IBOutlet UISlider *slider;
}

- (IBAction)sliderChanged:(id)sender;

@end
