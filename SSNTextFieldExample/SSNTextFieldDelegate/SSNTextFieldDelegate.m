//
//  SSNTextFieldDelegate.m
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import "SSNTextFieldDelegate.h"
#import "SSN.h"

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

#pragma mark - Private Methods

- (NSArray *)splitSSN {
    return [self.ssn componentsSeparatedByString:@"-"];
}

#pragma mark - Public Methods

- (SSN *)getSSN {
    NSArray *ssnSplitted = [self splitSSN];
    if (ssnSplitted.count != 3) {
        return nil;
    }
    
    return [[SSN alloc] initWithAreaNumber:ssnSplitted[0] groupCode:ssnSplitted[1] serialNumber:ssnSplitted[2]];
}

@end
