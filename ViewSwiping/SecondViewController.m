//
//  SecondViewController.m
//  ViewSwiping
//
//  Created by ahmedpro on 3/9/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(back)];
    rec.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer: rec];
}

- (void) back {
    [self dismissViewControllerAnimated: YES completion: nil];
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
