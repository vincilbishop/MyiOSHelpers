//
//  MyDrawerViewController.m
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "MyDrawerViewController.h"

@implementation MyDrawerViewController

#pragma mark - Static -

static MyDrawerViewController *_sharedViewController;

static UIViewController *_leftDrawerViewController;
static UIViewController *_centerViewController;
static UIViewController *_rightDrawerViewController;

+ (MyDrawerViewController*) sharedViewController
{
    if (!_sharedViewController) {
        _sharedViewController = [MyDrawerViewController new];
    }
    
    return _sharedViewController;
}

+ (void) setSharedViewController:(MyDrawerViewController*)sharedViewController
{
    _sharedViewController = sharedViewController;
}

+ (void) setLeftDrawerViewController:(UIViewController*)viewController
{
    _leftDrawerViewController = viewController;
    
    if (_sharedViewController) {
        _sharedViewController.leftDrawerViewController = _leftDrawerViewController;
    }
}

+ (void) setCenterViewController:(UIViewController*)viewController
{
    _centerViewController = viewController;
    
    if (_sharedViewController) {
        _sharedViewController.centerViewController = _centerViewController;
    }
}

+ (void) setRightDrawerViewController:(UIViewController*)viewController
{
    _rightDrawerViewController = viewController;
    
    if (_sharedViewController) {
        _sharedViewController.rightDrawerViewController = _rightDrawerViewController;
    }
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCenterViewController:_centerViewController leftDrawerViewController:_leftDrawerViewController rightDrawerViewController:_rightDrawerViewController];
    
    if (self) {
        
        [MyDrawerViewController setSharedViewController:self];
    }
    
    return self;
}

- (void) goToViewControllerWithIdentifier:(NSString*)identifier storyboard:(UIStoryboard*)storyboard
{
    if (!storyboard) {
        storyboard = self.storyboard;
    }
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        [self closeDrawerAnimated:YES completion:^(BOOL finished) {
            self.centerViewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
        }];
    }];
}

@end
