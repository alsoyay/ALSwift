//
// Created by Daniela Postigo on 9/8/15.
//

import Foundation
import AYSwift

@objc(ALSource) public class ALSource: AYSource {
    public var frequency:ALItemFrequency {
        get {
            return ALItemFrequency(rawValue: self.index)!
        }
        set {
            self.index = newValue.rawValue
        }
    }

    public convenience init(frequency: ALItemFrequency) {
//        var items = (ALMock.items() as NSArray).itemsWithOccurence(frequency) as [AnyObject]
//        self.init(index: frequency.rawValue, items: items)


        self.init(index: frequency.rawValue, items: [])
    }

}
