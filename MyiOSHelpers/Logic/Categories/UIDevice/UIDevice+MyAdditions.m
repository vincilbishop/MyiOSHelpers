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


- (BOOL) isAdHoc
{
    BOOL isAdHoc = NO;
#ifdef ADHOC
    isDebug = YES;
#endif
    return isAdHoc;
}


- (BOOL) isProduction
{
    BOOL isProduction = NO;
#ifdef PRODUCTION
    isProduction = YES;
#endif
    return isProduction;
}

@end
