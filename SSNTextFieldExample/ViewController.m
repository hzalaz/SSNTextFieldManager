//
//  ViewController.m
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import "ViewController.h"
#import "SSNTextFieldDelegate.h"
#import "SSN.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkSSN:(id)sender {
    SSN *ssn = [self.textFieldDelegate getSSN];
    
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendFormat:@"Area Number: %@\n", ssn.areaNumber];
    [result appendFormat:@"Group Code: %@\n", ssn.groupCode];
    [result appendFormat:@"Serial Number: %@\n", ssn.serialNumber];
    [result appendFormat:@"Valid: %@\n", [ssn isValid] ? @"TRUE" : @"FALSE"];
    
    self.result.text = result;
}

@end
