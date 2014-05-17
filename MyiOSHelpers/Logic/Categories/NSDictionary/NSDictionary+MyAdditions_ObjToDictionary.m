//
//  NSDictionary+MyAdditions_ObjToDictionary.m
//  Pods
//
//  Created by Vincil Bishop on 4/15/14.
//
//

#import "NSDictionary+MyAdditions_ObjToDictionary.h"
#import <objc/runtime.h>

@implementation NSDictionary (MyAdditions_ObjToDictionary)

+ (NSDictionary *) dictionaryWithPropertiesOfObject:(id)obj
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    if ([obj superclass] != [NSObject class]) {
        //dict addEntriesFromDictionary:[NSD]
    }
   
    unsigned count;
    objc_property_t *properties = class_copyPropertyList([obj class], &count);
    
    for (int i = 0; i < count; i++) {
        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
        Class classObject = NSClassFromString([key capitalizedString]);
        
        id object = [obj valueForKey:key];
        
        if (classObject) {
            id subObj = [self dictionaryWithPropertiesOfObject:object];
            [dict setObject:subObj forKey:key];
        }
        else if([object isKindOfClass:[NSArray class]])
        {
            NSMutableArray *subObj = [NSMutableArray array];
            for (id o in object) {
                if ([o isKindOfClass:[NSString class]] || [o isKindOfClass:[NSNumber class]] || [o isKindOfClass:[NSDictionary class]]) {
                    [subObj addObject:o];
                } else {
                    [subObj addObject:[self dictionaryWithPropertiesOfObject:o]];
                }
            }
            [dict setObject:subObj forKey:key];
        }
        else
        {
            if(object) [dict setObject:object forKey:key];
        }
    }
    
    free(properties);
    return [NSDictionary dictionaryWithDictionary:dict];
}

@end
