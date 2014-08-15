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

@end
