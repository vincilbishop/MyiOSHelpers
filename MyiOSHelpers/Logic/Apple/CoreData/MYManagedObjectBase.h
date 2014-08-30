//
//  MYManagedObjectBase.h
//  Shuffle
//
//  Created by Vincil Bishop on 8/16/14.
//  Copyright (c) 2014 CabForward, LLC. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "MYParseableModelObject.h"
#import "CoreData+MagicalRecord.h"

@interface MYManagedObjectBase : NSManagedObject<MYParseableModelObject>

+ (NSDictionary*) MY_arrayOfMappedManagedObjectDictionaryWithArray:(NSArray*)array;

+ (NSDictionary*) MY_mappedManagedObjectDictionaryWithDictionary:(NSDictionary*)dictionary;

- (NSDictionary*) MY_managedObjectDictionary;

@end
