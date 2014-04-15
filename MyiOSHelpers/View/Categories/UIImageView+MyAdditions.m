//
//  UIImageView+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 2/20/14.
//
//

#import "UIImageView+MyAdditions.h"

@implementation UIImageView (MyAdditions)

- (void) showPlaceholderImage
{
    self.image = [UIImageView placeholderImage];
}

+ (UIImage*) placeholderImage
{
    return [UIImage imageNamed:@"IOGPlaceholderImage.png"];;
}

@end
