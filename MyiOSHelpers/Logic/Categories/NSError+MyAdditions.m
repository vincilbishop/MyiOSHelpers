//
//  NSError+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/12/14.
//
//

#import "NSError+MyAdditions.h"

@implementation NSError (MyAdditions)

+ (NSError*) genericError
{
    NSError *error = [[NSError alloc] initWithDomain:@"Failure" code:500 userInfo:@{NSLocalizedDescriptionKey:[NSThread callStackSymbols]}];
    
    return error;
}

@end
