//
//  NSString+MyNilOrEmpty.m
//  Pods
//
//  Created by Vincil Bishop on 4/19/14.
//
//

#import "NSString+MyNilOrEmpty.h"

@implementation NSString (MyNilOrEmpty)

+ (BOOL) isNilOrEmpty:(NSString*)string
{
    BOOL result = !(string && string.length);
    return result;
}

@end
