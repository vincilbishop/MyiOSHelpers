//
//  NSRunLoop+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/19/14.
//
//

#import "NSRunLoop+MyAdditions.h"

@implementation NSRunLoop (MyAdditions)

- (void)runMode:(NSString *)mode untilDate:(NSDate *)limitDate repeat:(void (^)(BOOL *stop))block
{
    BOOL done = NO;
    do {
        [self runMode:mode beforeDate:limitDate];
        block(&done);
    } while (!done && ([limitDate timeIntervalSinceNow] > 0.0));
}

- (void)runUntilDate:(NSDate *)limitDate repeat:(void (^)(BOOL *stop))block
{
    [self runMode:NSDefaultRunLoopMode untilDate:limitDate repeat:block];
}

- (void)runWithTimeoutInSeconds:(double)timeout repeat:(void (^)(BOOL *stop))block
{
    NSDate *limitDate = [[NSDate date] dateByAddingTimeInterval:timeout];
    [self runMode:NSDefaultRunLoopMode untilDate:limitDate repeat:block];
}

@end
