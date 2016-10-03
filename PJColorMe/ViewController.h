//
//  ViewController.h
//  PJColorMe
//
//  Created by Test P01 on 23/09/16.
//  Copyright © 2016 Test P01. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kAllUIElementHeight 40.0
#define kAllUIElementWidth 80.0
#define kHorizontalpadding 20.0
#define kVerticalpadding 20.0
#define kAllUISliderWidth 250.0
@interface ViewController : UIViewController
{
    UILabel *redLabel;
    UILabel *greenLabel;
    UILabel *blueLabel;
    UILabel *alphaLabel;
    UISlider *redSlider;
    UISlider *greenSlider;
    UISlider *blueSlider;
    UISlider *alphaSlider;
    CGFloat screenWidth;
    CGFloat screenHeight;
    
}


@end

