//
//  SSN.m
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import "SSN.h"

@implementation SSN

- (instancetype)initWithAreaNumber:(NSString *)areaNumber groupCode:(NSString *)groupCode serialNumber:(NSString *)serialNumber {
    self = [super init];
    if (self) {
        _areaNumber = areaNumber;
        _groupCode = groupCode;
        _serialNumber = serialNumber;
    }
    return self;
    
}

#pragma mark - Private Methods

- (BOOL)isAreaNumberValid {
    NSInteger areaNumber = [_areaNumber intValue];
    
    BOOL isValid = YES;
    
    isValid &= areaNumber != 666;
    isValid &= areaNumber > 0;
    isValid &= (areaNumber < 900 || areaNumber > 999);
    
    return isValid;
}

- (BOOL)isGroupCodeValid {
    NSInteger groupCode = [_groupCode intValue];
    
    return groupCode > 0 && groupCode <= 100;
}

- (BOOL)isSerialNumberValid {
    NSInteger serialNumber = [_serialNumber intValue];
    return serialNumber > 0 && serialNumber <= 9999;
}

#pragma mark - Public Methods

- (BOOL)isValid {
    return [self isAreaNumberValid] && [self isGroupCodeValid] && [self isSerialNumberValid];
}

@end
