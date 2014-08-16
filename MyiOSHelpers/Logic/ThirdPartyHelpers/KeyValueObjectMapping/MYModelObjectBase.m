//
//  MYModelObjectBase.m
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "MYModelObjectBase.h"

@implementation MYModelObjectBase

+ (DCParserConfiguration*) configuration
{
    return [DCParserConfiguration new];
}

+ (DCKeyValueObjectMapping*) parser
{
    return [DCKeyValueObjectMapping mapperForClass:self andConfiguration:[self configuration]];
}

- (void) updateObjectWithDictionary:(NSDictionary*)values
{
    [[[self class] parser] updateObject:self withDictionary:values];
}

@end
