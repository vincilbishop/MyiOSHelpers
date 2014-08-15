MyiOSHelpers
============

A collection of often used but time consuming to recreate logic for iOS.


## Quick Tips

## Blocks

Use MYCompletionBlock generically for block based methods. It should have most of the parameters needed by the caller, eliminating the need for gratuitously unique callbacks.

````objective-c
typedef void (^MYCompletionBlock)(id sender, BOOL success, NSError *error, id result);
````

## Logging

Use ````DDLogVerbose```` or another cocoalumberjack macro instead of ````NSLog````. This will make log messages more managable and eliminate the need to manually remove ````NSLog```` statements.

