//
//  OrderArrayString.swift
//  HackerRank
//
//  Created by Miguel Otero on 8/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153162#overview

import Foundation
import UIKit
struct OrderArrayString {
    static func test() {
        print(OrderArrayString(array: ["a","abc","ab"]).execute() == ["abc","ab","a"])
        print(OrderArrayString(array: ["adele","juan","sandra"]).execute() == ["sandra","adele","juan"])
        print(OrderArrayString(array: []).execute() == [])
    }
    let array:[String]
    init(array:[String]) {
        self.array = array
    }
    func execute() -> [String] {
        let order = array.sorted(by: {$0.count > $1.count})
        return order
    }
}
