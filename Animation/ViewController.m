//
//  ViewController.m
//  Animation
//
//  Created by Ileana Padilla on 3/6/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle,(CFStringRef) @"sonido", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, & soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSArray * imageArray  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"1.png"],
                             [UIImage imageNamed:@"2.png"],
                             [UIImage imageNamed:@"3.png"],
                             [UIImage imageNamed:@"4.png"],
                             [UIImage imageNamed:@"5.png"],
                             [UIImage imageNamed:@"6.png"],
                             [UIImage imageNamed:@"7.png"],
                             [UIImage imageNamed:@"8.png"],
                             [UIImage imageNamed:@"9.png"],
                             [UIImage imageNamed:@"10.png"],
                             nil];
    UIImageView * kenJump = [[UIImageView alloc]initWithFrame: CGRectMake(210, 170, 150, 130)];
    kenJump.animationImages = imageArray;
    kenJump.animationDuration=1.1;
    kenJump.contentMode = UIViewContentModeBottomLeft;
    [self.view addSubview:kenJump];
    [kenJump startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
