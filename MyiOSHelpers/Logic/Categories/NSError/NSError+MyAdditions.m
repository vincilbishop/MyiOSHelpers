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
    return [self genericErrorWithLocalizedDescription:[NSThread callStackSymbols]];
}

+ (NSError*) genericErrorWithLocalizedDescription:(NSString*)localizedDescription
{
    NSError *error = [[NSError alloc] initWithDomain:@"Failure" code:500 userInfo:@{NSLocalizedDescriptionKey:localizedDescription}];
    
    return error;
}

@end
