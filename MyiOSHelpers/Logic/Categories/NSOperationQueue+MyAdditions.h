//
//  NSOperationQueue+MyAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 2/11/14.
//
//

#import <Foundation/Foundation.h>

@interface NSOperationQueue (MyAdditions)

+ (NSOperationQueue*) backgroundQueue;

- (void) addOperationWithBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
