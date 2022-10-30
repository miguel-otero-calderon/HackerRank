//
//  FindZigZagSequence.swift
//  HackerRank
//
//  Created by Miguel Otero on 29/10/22.
//

import Foundation
import UIKit
struct FindZigZagSequence {
    static func test() {
//        let array = [2,3,5,1,4] // -> 1,4,5,3,2
        let array = [1 ,2 ,3, 4, 5, 6, 7] // -> 1,2,3,7,6,5,4
        print(array.findZigZagSequence())
    }
}
extension Collection where Iterator.Element == Int {
    func findZigZagSequence() {
        var array = [Int]()
        var sorted = self.sorted()
        let mayor = sorted.removeLast()
        let k = sorted.count/2
        array.append(contentsOf: sorted.prefix(k))
        array.append(mayor)
        let resto = sorted.suffix( sorted.count - k).sorted(by: { item1, item2 in item2 < item1 })
        array.append(contentsOf: resto)
        print(array ,separator: " ")
    }
}
