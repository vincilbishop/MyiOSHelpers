//
//  NSObject+MyReactiveAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 6/3/14.
//
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "MyiOSLogicBlocks.h"

@interface NSObject (MyReactiveAdditions)

- (void) observeKeyPath:(NSString*)keyPath onNextChange:(MYCompletionBlock)block;
- (void) observeKeyPath:(NSString*)keyPath onChange:(MYCompletionBlock)block;
- (void) observeKeyPath:(NSString*)keyPath onChange:(MYCompletionBlock)block once:(BOOL)once;

@end
