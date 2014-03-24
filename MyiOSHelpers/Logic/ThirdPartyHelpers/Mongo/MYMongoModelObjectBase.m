//
//  MYModelObjectBase.m
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "MYMongoModelObjectBase.h"

@implementation MYMongoModelObjectBase

+ (DCKeyValueObjectMapping*) parser
{
    return [DCKeyValueObjectMapping mapperForClass:self];
}

@end
