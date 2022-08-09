//
//  NumberCount.swift
//  HackerRank
//
//  Created by Miguel Otero on 8/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153156#overview

import Foundation
import UIKit
struct NumberCount {
    static func test() {
        print(NumberCount(array: [5,15,55,515]).execute(character: "5") == 6)
        print(NumberCount(array: [5,15,55,515]).execute(character: "1") == 2)
        print(NumberCount(array: [55555]).execute(character: "5") == 5)
        print(NumberCount(array: [55555]).execute(character: "1") == 0)
    }
    let array:[Int]
    init(array:[Int]) {
        self.array = array
    }
    func execute(character: Character) -> Int {
        var total = 0
        array.map({String($0)}).filter({$0.contains(character)}).forEach { item in
            for s in item {
                if s == character {
                    total += 1
                }
            }
        }
        return total
    }
}
