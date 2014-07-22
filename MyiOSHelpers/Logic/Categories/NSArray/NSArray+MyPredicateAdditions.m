//
//  NSArray+MyPredicateAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 7/22/14.
//
//

#import "NSArray+MyPredicateAdditions.h"

@implementation NSArray (MyPredicateAdditions)

- (id) objectForPredicate:(NSPredicate*)predicate
{
    NSArray *objects = [self filteredArrayUsingPredicate:predicate];
    
    if (objects.count == 1) {
        
        return objects[0];
        
    } else {
        
        return nil;
    }
}


@end
