//
//  MYModelObjectBase.m
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "MYMongoModelObjectBase.h"

@implementation MYMongoModelObjectBase

- (NSString*) description
{
    NSString *superDescription = [super description];
    return [NSString stringWithFormat:@"%@:[_id:%@]",superDescription,self._id];
}

@end
