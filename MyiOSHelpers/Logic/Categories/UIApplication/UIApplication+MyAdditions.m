//
//  UIApplication+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 2/19/14.
//
//

#import "UIApplication+MyAdditions.h"

@implementation UIApplication (MyAdditions)

- (UIViewController*) presentedViewController
{
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

@end
