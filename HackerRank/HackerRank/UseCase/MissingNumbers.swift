//
//  MissingNumbers.swift
//  HackerRank
//
//  Created by Miguel Otero on 8/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153166#overview

import Foundation
import UIKit
struct MissingNumbers {
    static func test() {
        var array:[Int] = []
        for item in 1..<101 {
            array.append(item)
        }
        array.remove(at: 25)
        array.remove(at: 20)
        array.remove(at: 6)
        print(MissingNumbers(array: array).execute() == [7,21,26])
    }
    let array:[Int]
    init(array:[Int]) {
        self.array = array
    }
    func execute() -> [Int] {
        var temporal:[Int] = []
        for item in 1..<array.max()! {
            temporal.append(item)
        }
        let faltantes = temporal.filter { item in !array.contains(item) }
        return faltantes
    }
}
