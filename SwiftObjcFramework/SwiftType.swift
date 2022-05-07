//
//  SwiftType.swift
//  SwiftObjcFramework
//
//  Created by Soumya Ranjan Mahunt on 07/05/22.
//

import Foundation

@objcMembers public class SwiftType: NSObject {
    #if INLUDE_OBJC_TYPE
    public static let objCType = ObjCType()
    #endif

    public static func sayHello() {
        #if INLUDE_OBJC_TYPE
        objCType.sayHello()
        #else
        print("Hello from Swift type")
        #endif
    }
}
