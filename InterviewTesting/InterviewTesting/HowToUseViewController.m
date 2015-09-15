//
//  HowToUseViewController.m
//  InterviewTesting
//
//  Created by Long Vo on 9/15/15.
//  Copyright (c) 2015 Long Vo. All rights reserved.
//

#import "HowToUseViewController.h"

@interface HowToUseViewController ()

@end

@implementation HowToUseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTouchReturn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
