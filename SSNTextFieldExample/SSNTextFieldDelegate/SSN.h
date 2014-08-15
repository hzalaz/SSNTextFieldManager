//
//  SSN.h
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSN : NSObject

@property (strong, nonatomic) NSString *areaNumber;
@property (strong, nonatomic) NSString *groupCode;
@property (strong, nonatomic) NSString *serialNumber;

- (instancetype)initWithAreaNumber:(NSString *)areaNumber groupCode:(NSString *)groupCode serialNumber:(NSString *)serialNumber;

- (BOOL)isValid;

@end
