//
//  FindTheMedian.swift
//  HackerRank
//
//  Created by Miguel on 22/01/22.
//

import Foundation
struct FindTheMedian {
    static func test() {
        let array = [0,1,2,4,6,5,3]
        let result = findMedian(arr: array)
        print(result)
    }
    
    static func findMedian(arr: [Int]) -> Int {
        let array = arr.sorted()
        return array[array.count/2]
    }
}
