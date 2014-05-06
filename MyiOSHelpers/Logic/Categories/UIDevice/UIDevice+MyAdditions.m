//
//  UIDevice+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/12/14.
//
//

#import "UIDevice+MyAdditions.h"

@implementation UIDevice (MyAdditions)

- (BOOL) isSimulator
{
    BOOL isSimulator = NO;
    #if TARGET_IPHONE_SIMULATOR
    isSimulator = YES;
    #endif
    return isSimulator;
}

- (BOOL) isDebug
{
    BOOL isDebug = NO;
#ifdef DEBUG
    isDebug = YES;
#endif
    return isDebug;
}


@end
