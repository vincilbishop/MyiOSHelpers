//
//  MYModelObjectBase.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import <Foundation/Foundation.h>
#import "MYParseableModelObject.h"

#import "DCArrayMapping.h"
#import "DCKeyValueObjectMapping.h"
#import "DCParserConfiguration.h"

@interface MYModelObjectBase : NSObject<MYParseableModelObject>

+ (DCParserConfiguration*) configuration;
+ (DCKeyValueObjectMapping*) parser;

@end
