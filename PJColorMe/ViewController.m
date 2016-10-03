//
//  ViewController.m
//  PJColorMe
//
//  Created by Test P01 on 23/09/16.
//  Copyright © 2016 Test P01. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    screenHeight =[[UIScreen mainScreen]bounds].size.height;
    self.view.backgroundColor =[UIColor blackColor];
    alphaLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizontalpadding, screenHeight-3*kVerticalpadding, kAllUIElementWidth, kAllUIElementHeight)];
    alphaLabel.layer.borderColor =[UIColor grayColor].CGColor;
    alphaLabel.layer.borderWidth =3.0;
    [self.view addSubview:alphaLabel];
    alphaSlider =[[UISlider alloc]initWithFrame:CGRectMake(2*kHorizontalpadding+kAllUIElementWidth, screenHeight-3*kVerticalpadding, kAllUISliderWidth, kAllUIElementHeight)];
    alphaSlider.thumbTintColor =[UIColor grayColor];
    [ alphaSlider addTarget:self action:@selector(handlealpha :) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:alphaSlider];
    
    blueLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizontalpadding, screenHeight-6*kVerticalpadding, kAllUIElementWidth, kAllUIElementHeight)];
    blueLabel.layer.borderColor =[UIColor blueColor].CGColor;
    blueLabel.layer.borderWidth =3.0;
    [self.view addSubview:blueLabel];
    blueSlider =[[UISlider alloc]initWithFrame:CGRectMake(2*kHorizontalpadding+kAllUIElementWidth, screenHeight-6*kVerticalpadding, kAllUISliderWidth, kAllUIElementHeight)];
    blueSlider.thumbTintColor =[UIColor blueColor];
    [ blueSlider addTarget:self action:@selector(handleblue :) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:blueSlider];
    
    greenLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizontalpadding, screenHeight-9*kVerticalpadding, kAllUIElementWidth, kAllUIElementHeight)];
    greenLabel.layer.borderColor =[UIColor greenColor].CGColor;
    greenLabel.layer.borderWidth =3.0;
    [self.view addSubview:greenLabel];
    greenSlider =[[UISlider alloc]initWithFrame:CGRectMake(2*kHorizontalpadding+kAllUIElementWidth, screenHeight-9*kVerticalpadding, kAllUISliderWidth, kAllUIElementHeight)];
    greenSlider.thumbTintColor =[UIColor greenColor];
    [ greenSlider addTarget:self action:@selector(handlegreen :) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:greenSlider];
    
    redLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizontalpadding, screenHeight-12*kVerticalpadding, kAllUIElementWidth, kAllUIElementHeight)];
    redLabel.layer.borderColor =[UIColor redColor].CGColor;
    redLabel.layer.borderWidth =3.0;
    [self.view addSubview:redLabel];
    redSlider =[[UISlider alloc]initWithFrame:CGRectMake(2*kHorizontalpadding+kAllUIElementWidth, screenHeight-12*kVerticalpadding, kAllUISliderWidth, kAllUIElementHeight)];
    redSlider.thumbTintColor =[UIColor redColor];
    [ redSlider addTarget:self action:@selector(handlered :) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:redSlider];
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handlealpha :(id)sender
{
    UISlider *localalphaSlider =sender;
    alphaLabel.text =[NSString stringWithFormat:@"%0.2f",localalphaSlider.value];
    [self colorMe];
}
-(void)handleblue :(id)sender
{
    UISlider *localblueSlider =sender;
    blueLabel.text =[NSString stringWithFormat:@"%0.2f",localblueSlider.value];
    [self colorMe];
}
-(void)handlegreen :(id)sender
{
    UISlider *localgreenSlider =sender;
    greenLabel.text =[NSString stringWithFormat:@"%0.2f",localgreenSlider.value];
    [self colorMe];
}
-(void)handlered :(id)sender
{
    UISlider *localredSlider =sender;
    alphaLabel.text =[NSString stringWithFormat:@"%0.2f",localredSlider.value];
    [self colorMe];
}




-(void)colorMe{
    self.view.backgroundColor =[UIColor colorWithRed:redSlider.value green:greenSlider.value blue:blueSlider.value alpha:alphaSlider.value];
}

@end
