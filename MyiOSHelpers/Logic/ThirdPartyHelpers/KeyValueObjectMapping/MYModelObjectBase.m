//
//  MYModelObjectBase.m
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "MYModelObjectBase.h"

@implementation MYModelObjectBase

+ (DCKeyValueObjectMapping*) parser
{
    return [DCKeyValueObjectMapping mapperForClass:self];
}



@end
