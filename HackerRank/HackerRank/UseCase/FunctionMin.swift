//
//  FunctionMin.swift
//  HackerRank
//
//  Created by Miguel Otero on 13/08/22.
//

import Foundation
import UIKit
struct FunctionMin {
    static func test() {
        print([1,2,3].minX()!)
        print(["q","f","k"].minX()!)
        print([String]().minX())
    }
}
extension Collection where Iterator.Element:Comparable {
    func minX() -> Iterator.Element? {
        return self.sorted().first
    }
}
