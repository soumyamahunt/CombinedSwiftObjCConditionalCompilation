//
//  ObjCType.m
//  SwiftObjcFramework
//
//  Created by Soumya Ranjan Mahunt on 07/05/22.
//

#import <Foundation/Foundation.h>
#import <SwiftObjcFramework/SwiftObjcFramework-swift.h>
#import "ObjCType.h"

@implementation ObjCType

#ifdef INLUDE_OBJC_TYPE
+(instancetype)shared
{
    return SwiftType.objCType;
}
#endif

-(void)sayHello
{
    NSLog(@"Hello from Objective C type");
}

@end
