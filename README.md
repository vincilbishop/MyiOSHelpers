MyiOSHelpers
============

A collection of often used but time consuming to recreate logic for iOS.


## Quick Tips

Use MYCompletionBlock generically for block based methods. It should have most of the parameters needed by the caller, eliminating the need for gratuitously unique callbacks.

````objective-c
typedef void (^MYCompletionBlock)(id sender, BOOL success, NSError *error, id result);
````


