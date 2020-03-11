//
//  ViewController.m
//  ViewSwiping
//
//  Created by ahmedpro on 3/9/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(next)];
    rec.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer: rec];
}

- (void) next {
    printf("next");
    SecondViewController *sec = [self.storyboard instantiateViewControllerWithIdentifier: @"secondViewID"];
    [sec setModalPresentationStyle: UIModalPresentationFullScreen];
    [sec setModalTransitionStyle: UIModalTransitionStyleFlipHorizontal];
    [self presentViewController: sec animated: YES completion: nil];
}


@end
