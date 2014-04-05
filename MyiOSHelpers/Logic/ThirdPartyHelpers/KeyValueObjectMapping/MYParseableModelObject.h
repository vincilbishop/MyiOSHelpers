//
//  MYParseableModelObject.h
//  Pods
//
//  Created by Vincil Bishop on 4/4/14.
//
//

#import <Foundation/Foundation.h>

@class DCKeyValueObjectMapping;

@protocol MYParseableModelObject <NSObject>

+ (DCKeyValueObjectMapping*) parser;

@end
