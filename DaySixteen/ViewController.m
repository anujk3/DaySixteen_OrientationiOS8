//
//  ViewController.m
//  DaySixteen
//
//  Created by Anuj Katiyal on 01/10/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationLandscapeLeft) {
        NSLog(@"Landscape left");
        self.lblInfo.text = @"Landscape left";
    } else if (orientation == UIInterfaceOrientationLandscapeRight) {
        NSLog(@"Landscape right");
        self.lblInfo.text = @"Landscape right";
    } else if (orientation == UIInterfaceOrientationPortrait) {
        NSLog(@"Portrait");
        self.lblInfo.text = @"Portrait";
    } else if (orientation == UIInterfaceOrientationPortraitUpsideDown) {
        NSLog(@"Upside down");
        self.lblInfo.text = @"Upside down";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator{
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation]; // do whatever
        if (orientation == UIInterfaceOrientationLandscapeLeft) {
            NSLog(@"Landscape Left");
            self.lblInfo.text = @"Landscape left";
        }
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
    }];
    [super viewWillTransitionToSize: size withTransitionCoordinator: coordinator];
}


/* This method has been deprecated though
-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        NSLog(@"Landscape left");
        self.lblInfo.text = @"Landscape left";
    } else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        NSLog(@"Landscape right");
        self.lblInfo.text = @"Landscape right";
    } else if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        NSLog(@"Portrait");
        self.lblInfo.text = @"Portrait";
    } else if (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        NSLog(@"Upside down");
        self.lblInfo.text = @"Upside down";
    }
}
*/


//Autorotate should not work, Orientation will remain the same

//-(BOOL) shouldAutorotate {
//    return NO;
//}

- (NSUInteger)supportedInterfaceOrientations{
    //return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait; // only allow these orientations
    return UIInterfaceOrientationMaskAll;
}

@end
