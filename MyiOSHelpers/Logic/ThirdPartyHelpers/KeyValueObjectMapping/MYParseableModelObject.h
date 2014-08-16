//
//  MYParseableModelObject.h
//  Pods
//
//  Created by Vincil Bishop on 4/4/14.
//
//

#import <Foundation/Foundation.h>

#import "DCArrayMapping.h"
#import "DCKeyValueObjectMapping.h"
#import "DCParserConfiguration.h"

@protocol MYParseableModelObject <NSObject>

+ (DCParserConfiguration*) configuration;
+ (DCKeyValueObjectMapping*) parser;

@end
