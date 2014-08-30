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

- (void) updateObjectWithDictionary:(NSDictionary*)values
{
    [[[self class] parser] updateObject:self withDictionary:values];
}

#pragma mark - Dictionary Helpers -

+ (NSDictionary*) MY_arrayOfMappedManagedObjectDictionaryWithArray:(NSArray*)array
{
    NSMutableArray *mappedObjects = [NSMutableArray new];
    
    [array enumerateObjectsUsingBlock:^(NSDictionary *objectDict, NSUInteger idx, BOOL *stop) {
        
        [mappedObjects addObject:[self MY_mappedManagedObjectDictionaryWithDictionary:objectDict]];
        
    }];
    
    return mappedObjects;
}

+ (NSDictionary*) MY_mappedManagedObjectDictionaryWithDictionary:(NSDictionary*)dictionary
{
    MYManagedObjectBase *managedObject = [self MR_createEntity];
    [managedObject updateObjectWithDictionary:dictionary];
    
    NSDictionary *representation = [managedObject MY_managedObjectDictionary];
    [managedObject MR_deleteEntity];
    
    return representation;
    
}

- (NSDictionary*) MY_managedObjectDictionary
{
    NSDictionary *representation = [NSDictionary new];
    
    NSArray *keys = [[[self entity] attributesByName] allKeys];
    representation = [[self dictionaryWithValuesForKeys:keys] mutableCopy];
    
    return representation;
    
}

@end
