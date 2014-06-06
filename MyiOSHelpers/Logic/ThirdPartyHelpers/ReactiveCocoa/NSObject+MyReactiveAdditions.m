//
//  NSObject+MyReactiveAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 6/3/14.
//
//

#import "NSObject+MyReactiveAdditions.h"
#import "MyiOSLogicBlocks.h"

@implementation NSObject (MyReactiveAdditions)

- (void) observeKeyPath:(NSString*)keyPath onNextChange:(MYCompletionBlock)block
{
    [self observeKeyPath:keyPath onChange:block once:YES];
}

- (void) observeKeyPath:(NSString*)keyPath onChange:(MYCompletionBlock)block
{
    [self observeKeyPath:keyPath onChange:block once:NO];
}

- (void) observeKeyPath:(NSString*)keyPath onChange:(MYCompletionBlock)block once:(BOOL)once
{
    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        return [[self rac_valuesForKeyPath:keyPath observer:self] subscribeNext:^(id changedObject) {
            
            if (changedObject) {
                [subscriber sendNext:@[subscriber,changedObject]];

                if (once) {
                    [subscriber sendCompleted];
                }
            }
        }];
    }];
    
    [signal subscribeNext:^(NSArray *result) {
        
        id<RACSubscriber> subscriber = result[0];
        id changedObject = result[1];
        if (block) {
            block(subscriber,YES,nil,changedObject);
        }
    }];
}

@end