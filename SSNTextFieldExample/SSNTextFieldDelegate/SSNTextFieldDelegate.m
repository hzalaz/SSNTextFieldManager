//
//  SSNTextFieldDelegate.m
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import "SSNTextFieldDelegate.h"

#define kFirstSlashIndexToAdd    3
#define kSecondSlashIndexToAdd   6

#define kSSNLength               11

@interface SSNTextFieldDelegate ()

@property (strong, nonatomic) NSString *ssn;

@end

@implementation SSNTextFieldDelegate

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSString *completeText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    if (string.length > 0) {        // The user entered a new character
        if (textField.text.length == kFirstSlashIndexToAdd || textField.text.length == kSecondSlashIndexToAdd) {
            textField.text = [NSString stringWithFormat:@"%@-%@", textField.text, string];
            return NO;
        } else if (completeText.length == kSSNLength) {
            self.ssn = textField.text;
            NSLog(@"SSN %@", self.ssn);
            return NO;
        }
    } else {                        // The user deleted a character
        if (completeText.length == kFirstSlashIndexToAdd+1 || completeText.length == kSecondSlashIndexToAdd+1) {
            textField.text = [completeText substringToIndex:completeText.length - 1];
            return NO;
        }
    }
    
    return YES;
}

@end
