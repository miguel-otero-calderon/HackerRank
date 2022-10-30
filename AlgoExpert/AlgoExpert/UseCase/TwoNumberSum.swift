//
//  TwoNumberSum.swift
//  AlgoExpert
//
//  Created by Miguel on 12/01/22.
//

import Foundation

struct TwoNumberSum {
    static func test() {
        var array = []
        let targetSum = 10
        
        let result = TwoNumberSum.twoNumberSum(&array, targetSum: targetSum)
        print(result)
    }
    static func twoNumberSum(_ array: inout [Int], targetSum:Int) -> [Int] {
        // Write your code here.
        for number in array {
            let others = array.filter { item in item != number }
            let temp = others.filter { item in item + number == targetSum }
            if !temp.isEmpty {
                return [number, temp.first!]
            }
        }
        return []
    }
}
