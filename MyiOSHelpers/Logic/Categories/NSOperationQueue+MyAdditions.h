//
//  NSOperationQueue+MyAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 2/11/14.
//
//

#import <Foundation/Foundation.h>

static NSOperationQueue *_myBackgroundOperationQueue;

@interface NSOperationQueue (MyAdditions)

+ (NSOperationQueue*) backgroundQueue;

- (void) addOperationWithBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
