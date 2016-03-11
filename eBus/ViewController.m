//
//  ViewController.m
//  eBus
//
//  Created by Amalul Ahli on 3/10/16.
//  Copyright (c) 2016 Bus. All rights reserved.
//

#import "ViewController.h"
#import "Login.h"
#import "Register.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    Login *view = [[Login alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:view animated:YES];
}

- (IBAction)register:(id)sender {
    Register *view = [[Register alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:view animated:YES];
}
@end
