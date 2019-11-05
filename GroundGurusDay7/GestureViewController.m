//
//  GestureViewController.m
//  GroundGurusDay7
//
//  Created by Earth Maniebo on 05/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
    [tap setNumberOfTapsRequired:2];
    [self.myView addGestureRecognizer:tap];
    
    
    UISwipeGestureRecognizer *gestureRecognizerToRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeToRight:)];
    [gestureRecognizerToRight setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.myView addGestureRecognizer:gestureRecognizerToRight];
}

- (void)didTap:(UITapGestureRecognizer *)recognizer {
    self.label.text = @"Tap!!";
}

- (void)swipeToRight:(UITapGestureRecognizer *)recognizer {
    self.label.text = @"Swipe to right!!";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
