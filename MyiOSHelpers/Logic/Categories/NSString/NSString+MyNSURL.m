//
//  NSString+NSURL.m
//  Pods
//
//  Created by Vincil Bishop on 8/16/14.
//
//

#import "NSString+MyNSURL.h"

@implementation NSString (MyNSURL)

- (NSURL*) URLValue
{
    return [NSURL URLWithString:self];
}

@end
