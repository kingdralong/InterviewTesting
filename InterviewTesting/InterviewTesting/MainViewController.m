//
//  ViewController.m
//  InterviewTesting
//
//  Created by Long Vo on 9/15/15.
//  Copyright (c) 2015 Long Vo. All rights reserved.
//

#import "MainViewController.h"
#import "InputViewController.h"

#define INPUT_SEGUE_IDENTIFIER @"inputview"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)onTouchBasicButton:(UIButton *)sender {
    [self performSegueWithIdentifier:INPUT_SEGUE_IDENTIFIER sender:sender];
}
- (IBAction)onTouchProfessionalButton:(UIButton *)sender {
    [self performSegueWithIdentifier:INPUT_SEGUE_IDENTIFIER sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:INPUT_SEGUE_IDENTIFIER]) {
        InputViewController *inputViewController;
        if ([segue.destinationViewController isKindOfClass:[UINavigationController class]]) {
            inputViewController = (InputViewController*)[segue.destinationViewController topViewController];
        } else {
            inputViewController = (InputViewController*)segue.destinationViewController;
        }
        UIButton *senderButton = (UIButton*)sender;
        inputViewController.typeTest = senderButton.titleLabel.text;
    }
}

@end
