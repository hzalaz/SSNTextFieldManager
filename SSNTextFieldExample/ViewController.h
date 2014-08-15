//
//  ViewController.h
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SSNTextFieldDelegate;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet SSNTextFieldDelegate *textFieldDelegate;
@property (weak, nonatomic) IBOutlet UILabel *result;

- (IBAction)checkSSN:(id)sender;
@end
