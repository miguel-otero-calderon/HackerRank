//
//  FindSmallerNumbers.swift
//  HackerRank
//
//  Created by Miguel Otero on 8/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153158#overview

import Foundation
import UIKit
struct FindSmallerNumbers<T:Comparable > {
    static func test() {
        print(FindSmallerNumbers<Int>(array: [4,3,2,1]).execute(quality: 3) == [1,2,3])
        print(FindSmallerNumbers<String>(array: ["q","f","k"]).execute(quality: 10) == ["f","k","q"])
        print(FindSmallerNumbers<Int>(array: [256,16]).execute(quality: 4) == [16,256])
        print(FindSmallerNumbers<String>(array: [String]()).execute(quality: 3) == [String]())
    }
    let array:[T]
    init(array:[T]) {
        self.array = array
    }
    func execute(quality: Int) -> [T] {
        let order = array.sorted(by: {$0 < $1})
        return Array(order.prefix(quality))
    }
}
