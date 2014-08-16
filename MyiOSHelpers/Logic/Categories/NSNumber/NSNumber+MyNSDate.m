//
//  NSNumber+MyNSDate.m
//  Pods
//
//  Created by Vincil Bishop on 8/16/14.
//
//

#import "NSNumber+MyNSDate.h"

@implementation NSNumber (MyNSDate)

- (NSDate*) dateValue
{
    return [NSDate dateWithTimeIntervalSince1970:[self doubleValue]];
}

@end
