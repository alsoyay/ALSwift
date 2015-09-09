//
// Created by Daniela Postigo on 9/8/15.
//

import Foundation


@objc public enum ALItemFrequency:Int {
    case RepeatsOnce = 1
    case RepeatsForever = 2

    public static let allValues: [ALItemFrequency] = [RepeatsOnce, RepeatsForever]
}


@objc(ALItem) public class ALItem:NSObject {

    public var name:String

    public var frequency:ALItemFrequency = .RepeatsOnce

    init(name:String) {
        self.name = name
    }

}


public extension ALItem {
    class func allFrequencyValues() -> [Int] {
        return ALItemFrequency.allValues.map({
            (transform: ALItemFrequency) in
            return transform.rawValue
        })
    }

//    public func changeFrequency(occurrence: ALItemFrequency) {
//        let library = ALMock.library
//
//        print("library = \(library)")
//        let current = library
//    }
//
//    public class func test() {
//        let library = ALMock.library
//
//        print("library = \(library)")
//    }
}
