//
//  MYModelObjectBase.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import <Foundation/Foundation.h>
#import "DCKeyValueObjectMapping.h"
#import "MYParseableModelObject.h"

@interface MYModelObjectBase : NSObject<MYParseableModelObject>

+ (DCKeyValueObjectMapping*) parser;

@end
