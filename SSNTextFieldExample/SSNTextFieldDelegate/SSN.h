//
//  SSN.h
//  SSNTextFieldExample
//
//  Created by Nicolas Purita on 8/15/14.
//  Copyright (c) 2014 NicoPuri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSN : NSObject

/**
 Area number component of SSN
 */
@property (strong, nonatomic) NSString *areaNumber;

/**
 Gropu Code component of SSN
 */
@property (strong, nonatomic) NSString *groupCode;

/**
 Serial Number component of SSN
 */
@property (strong, nonatomic) NSString *serialNumber;


/**
 Creates and returna a SSN object with the 3 components.
 
 @param areaNumber
 @param groupCode
 @param serialNumber
 
 @return A SSN Object
 */
- (instancetype)initWithAreaNumber:(NSString *)areaNumber groupCode:(NSString *)groupCode serialNumber:(NSString *)serialNumber;

/**
 Check if the SSN is valid. The group code change every time and it is static so it only checks that the number must be greater than 0.
 
 @return If the SSN is valid.
 */
- (BOOL)isValid;

@end
