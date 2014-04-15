//
//  NSNull+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 2/18/14.
//
//

#import "NSNull+MyAdditions.h"

@implementation NSNull (MyAdditions)

+ (id) objectOrNull:(id)object
{
    if (object) {
        return object;
    } else {
        return [NSNull null];
    }
}

@end
