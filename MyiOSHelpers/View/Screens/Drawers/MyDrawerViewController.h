//
//  MyDrawerViewController.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import <UIKit/UIKit.h>
#import "UIViewController+MyDrawerAdditions.h"
#import "MMDrawerController.h"
#import "MMDrawerBarButtonItem.h"

@interface MyDrawerViewController : MMDrawerController

@property (nonatomic,strong) UIStoryboard *storyboard;

+ (MyDrawerViewController*) sharedViewController;
+ (void) setSharedViewController:(MyDrawerViewController*)sharedViewController;

+ (void) setLeftDrawerViewController:(UIViewController*)viewController;
+ (void) setCenterViewController:(UIViewController*)viewController;
+ (void) setRightDrawerViewController:(UIViewController*)viewController;

- (void) goToViewControllerWithIdentifier:(NSString*)identifier storyboard:(UIStoryboard*)storyboard;

@end