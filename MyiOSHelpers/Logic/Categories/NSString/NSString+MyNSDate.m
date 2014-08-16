//
//  NSString+MyNSDate.m
//  Pods
//
//  Created by Vincil Bishop on 8/16/14.
//
//

#import "NSString+MyNSDate.h"

@implementation NSString (MyNSDate)

- (NSDate*) dateValue
{
    return [NSDate dateWithTimeIntervalSince1970:[self doubleValue]];
}

@end
