//
//  CalculateTheMedian.swift
//  HackerRank
//
//  Created by Miguel Otero on 8/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153168#overview

import Foundation
import UIKit
struct CalculateTheMedian {
    static func test() {
        print(CalculateTheMedian(array: [1,2,3]).execute() == 2.0)
        print(CalculateTheMedian(array: [2,3,4,5]).execute() == 3.5)
    }
    let array:[Int]
    init(array:[Int]) {
        self.array = array
    }
    func execute() -> Double {
        if array.count % 2 == 1 {
            return Double(array[array.count/2])
        } else {
            return (Double(array[array.count/2 - 1]) + Double(array[array.count/2]))/2.0
        }
    }
}
