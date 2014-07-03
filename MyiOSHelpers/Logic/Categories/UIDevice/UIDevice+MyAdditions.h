//
//  UIDevice+MyAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 4/12/14.
//
//

#import <UIKit/UIKit.h>

@interface UIDevice (MyAdditions)

- (BOOL) isSimulator;

// Must define DEBUG=1 preprocessor macro
- (BOOL) isDebug;

// Must define ADHOC=1 preprocessor macro
- (BOOL) isAdHoc;

// Must define PRODUCTION=1 preprocessor macro
- (BOOL) isProduction;

@end
