//
//  MYManagedObjectBase.m
//  Shuffle
//
//  Created by Vincil Bishop on 8/16/14.
//  Copyright (c) 2014 CabForward, LLC. All rights reserved.
//

#import "MYManagedObjectBase.h"

@implementation MYManagedObjectBase

+ (DCParserConfiguration*) configuration
{
    return [DCParserConfiguration new];
}

+ (DCKeyValueObjectMapping*) parser
{
    return [DCKeyValueObjectMapping mapperForClass:self andConfiguration:[self configuration]];
}

@end
