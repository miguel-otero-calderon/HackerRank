//
//  DiagonalDifference.swift
//  HackerRank
//
//  Created by Miguel on 23/01/22.
//

import Foundation
struct DiagonalDifference {
    static func test() {
        var array = [[Int]]()
        array.append([11,2,4])
        array.append([4,5,6])
        array.append([10,8,-12])
        let result = diagonalDifference(arr: array)
        print(result)
    }
    static func diagonalDifference(arr: [[Int]]) -> Int {
        var diagonalSum1 = 0
        var diagonalSum2 = 0
        var row = 0
        var column = arr.count - 1
        for (index, item) in arr.enumerated() {
            for (index2,item2) in item.enumerated() {
                if index == index2 {
                    diagonalSum1 = diagonalSum1 + item2
                }
                if index == row && index2 == column {
                    row = row + 1
                    column = column - 1
                    diagonalSum2 = diagonalSum2 + item2
                }
            }
        }
        return abs(diagonalSum1 - diagonalSum2)
    }
}
