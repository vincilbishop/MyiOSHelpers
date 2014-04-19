//
//  NSRunLoop+MyAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 4/19/14.
//
// https://gist.github.com/kristopherjohnson/5403529

#import <Foundation/Foundation.h>

@interface NSRunLoop (MyAdditions)

// Repeatedly call -runMode:beforeDate: and invoke the block until
//
// - the limitDate is reached, or
// - the block sets *stop to YES.

- (void)runMode:(NSString *)mode untilDate:(NSDate *)limitDate repeat:(void (^)(BOOL *stop))block;

// Repeatedly call -runMode:beforeDate: in NSDefaultRunLoopMode and invoke the block until
//
// - the limitDate is reached, or
// - the block sets *stop to YES.

- (void)runUntilDate:(NSDate *)limitDate repeat:(void (^)(BOOL *stop))block;

- (void)runWithTimeoutInSeconds:(double)timeout repeat:(void (^)(BOOL *stop))block;

@end
