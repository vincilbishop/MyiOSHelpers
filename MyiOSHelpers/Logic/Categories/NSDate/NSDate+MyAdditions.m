//
//  NSDate+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/12/14.
//
//

#import "NSDate+MyAdditions.h"

@implementation NSDate (MyAdditions)

- (NSString*) stringForDisplay
{
    return [NSDate stringForDisplayFromDate:self];
}

@end
