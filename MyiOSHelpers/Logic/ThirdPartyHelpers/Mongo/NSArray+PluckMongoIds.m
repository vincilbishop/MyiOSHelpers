//
//  NSArray+PluckMongoIds.m
//  Pods
//
//  Created by Vincil Bishop on 5/5/14.
//
//

#import "NSArray+PluckMongoIds.h"

@implementation NSArray (PluckMongoIds)

- (NSArray*) mongoIdArray
{
    NSArray *mongoIdArray = _.pluck(self,@"_id");
    return mongoIdArray;
}

@end
