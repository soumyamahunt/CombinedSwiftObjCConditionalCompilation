//
//  ObjCType.h
//  SwiftObjcFramework
//
//  Created by Soumya Ranjan Mahunt on 07/05/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjCType : NSObject
#ifdef INLUDE_OBJC_TYPE
+(instancetype)shared;
#endif
-(void)sayHello;
@end

NS_ASSUME_NONNULL_END
