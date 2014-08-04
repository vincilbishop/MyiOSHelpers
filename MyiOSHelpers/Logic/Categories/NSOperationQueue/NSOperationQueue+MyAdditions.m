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

- (void) tryOperationWithBlock:(void (^)(void))block successTest:(BOOL (^)(void))successTest repeatCount:(int)repeatCount waitBetweenTries:(NSTimeInterval)waitTime
{
    for (int i = 0; i < repeatCount; i++) {
        // Let's try to our success test...
        if (!successTest()) {
            
            DDLogVerbose(@"Success test failed, let's try this again...we have tried this %i times", i + 1);
            
            [self addOperationWithBlock:^{
                @try {
                    block();
                }
                @catch (NSException *exception) {
                    DDLogVerbose(@"exception when trying operation: %@",exception);
                }
                @finally {
                    //
                }
                
            }];
            
            // Wait a second
            [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:waitTime]];
            
        }
    }

}

@end
