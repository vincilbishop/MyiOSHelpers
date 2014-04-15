//
//  NSOperationQueue+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 2/11/14.
//
//

#import "NSOperationQueue+MyAdditions.h"

@implementation NSOperationQueue (MyAdditions)

static NSOperationQueue *_myBackgroundOperationQueue;

+ (NSOperationQueue*) backgroundQueue
{
    if (!_myBackgroundOperationQueue) {
        _myBackgroundOperationQueue = [NSOperationQueue new];
    }
    
    return _myBackgroundOperationQueue;
}

- (void) addOperationWithBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay
{
    double delayInSeconds = delay;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        
        [self addOperationWithBlock:block];
    });
}

@end
