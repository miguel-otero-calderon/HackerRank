//
//  FindUniqueElement.swift
//  HackerRank
//
//  Created by Miguel on 22/01/22.
//

import Foundation
struct FindUniqueElement {
    static func test() {
        let array = [1,2,3,4,3,2,1]
        let result = lonelyinteger(a: array)
        print(result)
    }
    static func lonelyinteger(a: [Int]) -> Int {
        for item in a {
            if a.filter({element in element == item}).count == 1 {
                return item
            }
        }
        return 0
    }
    func diagonalDifference(arr: [[Int]]) -> Int {
        // Write your code here
        let n = arr[0][0]
        var diagonal1 = 0
        var diagonal2 = 0
        for index in 1...n {
            diagonal1 += arr[index][index - 1]
            diagonal2 += arr[index][n - index]
        }
        return abs(diagonal1 - diagonal2)
    }
}
